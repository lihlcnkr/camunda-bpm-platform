/* Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.camunda.bpm.engine.test.api.variables;

import org.camunda.bpm.engine.impl.persistence.entity.ExecutionEntity;
import org.camunda.bpm.engine.impl.test.PluggableProcessEngineTestCase;
import org.camunda.bpm.engine.runtime.Execution;
import org.camunda.bpm.engine.runtime.VariableInstance;
import org.camunda.bpm.engine.task.Task;
import org.camunda.bpm.engine.test.Deployment;

/**
 * @author Roman Smirnov
 *
 */
public class ExecutionVariablesTest extends PluggableProcessEngineTestCase {

  @Deployment
  public void testTreeCompactionWithLocalVariableOnConcurrentExecution() {
    runtimeService.startProcessInstanceByKey("process");

    Execution innerTaskExecution = runtimeService
        .createExecutionQuery()
        .activityId("innerTask")
        .singleResult();

    Execution firstConcurrentExecution = runtimeService
        .createExecutionQuery()
        .executionId(((ExecutionEntity) innerTaskExecution).getParentId())
        .singleResult();

    Task task = taskService
        .createTaskQuery()
        .taskDefinitionKey("task")
        .singleResult();

    // when
    runtimeService.setVariableLocal(firstConcurrentExecution.getId(), "foo", "bar");
    taskService.complete(task.getId());

    // then
    VariableInstance variable = runtimeService.createVariableInstanceQuery().singleResult();
    assertNotNull(variable);
    assertEquals("foo", variable.getName());
  }

  @Deployment
  public void testTreeCompactionForkParallelGateway() {
    // given
    runtimeService.startProcessInstanceByKey("process");

    Task task1 = taskService
        .createTaskQuery()
        .taskDefinitionKey("task1")
        .singleResult();

    Execution task2Execution = runtimeService
        .createExecutionQuery()
        .activityId("task2")
        .singleResult();

    // when
    runtimeService.setVariableLocal(task2Execution.getId(), "foo", "bar");
    taskService.complete(task1.getId());

    // then
    VariableInstance variable = runtimeService.createVariableInstanceQuery().singleResult();
    assertNotNull(variable);
    assertEquals("foo", variable.getName());
  }

  @Deployment
  public void testTreeCompactionNestedForkParallelGateway() {
    // given
    runtimeService.startProcessInstanceByKey("process");

    Task task1 = taskService
        .createTaskQuery()
        .taskDefinitionKey("task1")
        .singleResult();

    Execution task2Execution = runtimeService
        .createExecutionQuery()
        .activityId("task2")
        .singleResult();

    // when
    runtimeService.setVariableLocal(task2Execution.getId(), "foo", "bar");
    taskService.complete(task1.getId());

    // then
    VariableInstance variable = runtimeService.createVariableInstanceQuery().singleResult();
    assertNotNull(variable);
    assertEquals("foo", variable.getName());
  }

}
