--
-- Copyright Camunda Services GmbH and/or licensed to Camunda Services GmbH
-- under one or more contributor license agreements. See the NOTICE file
-- distributed with this work for additional information regarding copyright
-- ownership. Camunda licenses this file to you under the Apache License,
-- Version 2.0; you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

drop index ACT_IDX_HI_PRO_INST_END on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_I_BUSKEY on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_INST_TENANT_ID on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_INST_PROC_DEF_KEY on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_INST_PROC_TIME on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PI_PDEFID_END_TIME on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_INST_ROOT_PI on ACT_HI_PROCINST;
drop index ACT_IDX_HI_PRO_INST_RM_TIME on ACT_HI_PROCINST;

drop index ACT_IDX_HI_ACTINST_ROOT_PI on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_START on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_END on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_PROCINST on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_COMP on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_STATS on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_TENANT_ID on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_PROC_DEF_KEY on ACT_HI_ACTINST;
drop index ACT_IDX_HI_AI_PDEFID_END_TIME on ACT_HI_ACTINST;
drop index ACT_IDX_HI_ACT_INST_RM_TIME on ACT_HI_ACTINST;

drop index ACT_IDX_HI_TASKINST_ROOT_PI on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_INST_TENANT_ID on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_INST_PROC_DEF_KEY on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASKINST_PROCINST on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASKINSTID_PROCINST on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_INST_RM_TIME on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_INST_START on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_INST_END on ACT_HI_TASKINST;

drop index ACT_IDX_HI_IDENT_LNK_ROOT_PI on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_USER on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_GROUP on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_TENANT_ID on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_PROC_DEF_KEY on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LINK_TASK on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LINK_RM_TIME on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_TIMESTAMP on ACT_HI_IDENTITYLINK;

drop index ACT_IDX_HI_DETAIL_ROOT_PI on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_PROC_INST on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_ACT_INST on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_CASE_INST on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_CASE_EXEC on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_TIME on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_NAME on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_TASK_ID on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_TENANT_ID on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_PROC_DEF_KEY on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_BYTEAR on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_RM_TIME on ACT_HI_DETAIL;
drop index ACT_IDX_HI_DETAIL_TASK_BYTEAR on ACT_HI_DETAIL;

drop index ACT_IDX_HI_VARINST_ROOT_PI on ACT_HI_VARINST;
drop index ACT_IDX_HI_PROCVAR_PROC_INST on ACT_HI_VARINST;
drop index ACT_IDX_HI_PROCVAR_NAME_TYPE on ACT_HI_VARINST;
drop index ACT_IDX_HI_CASEVAR_CASE_INST on ACT_HI_VARINST;
drop index ACT_IDX_HI_VAR_INST_TENANT_ID on ACT_HI_VARINST;
drop index ACT_IDX_HI_VAR_INST_PROC_DEF_KEY on ACT_HI_VARINST;
drop index ACT_IDX_HI_VARINST_BYTEAR on ACT_HI_VARINST;
drop index ACT_IDX_HI_VARINST_RM_TIME on ACT_HI_VARINST;

drop index ACT_IDX_HI_INCIDENT_TENANT_ID on ACT_HI_INCIDENT;
drop index ACT_IDX_HI_INCIDENT_PROC_DEF_KEY on ACT_HI_INCIDENT;
drop index ACT_IDX_HI_INCIDENT_ROOT_PI on ACT_HI_INCIDENT;
drop index ACT_IDX_HI_INCIDENT_PROCINST on ACT_HI_INCIDENT;
drop index ACT_IDX_HI_INCIDENT_RM_TIME on ACT_HI_INCIDENT;

drop index ACT_IDX_HI_JOB_LOG_ROOT_PI on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_PROCINST on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_PROCDEF on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_TENANT_ID on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_JOB_DEF_ID on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_PROC_DEF_KEY on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_EX_STACK on ACT_HI_JOB_LOG;
drop index ACT_IDX_HI_JOB_LOG_RM_TIME on ACT_HI_JOB_LOG;

drop index ACT_HI_EXT_TASK_LOG_ROOT_PI on ACT_HI_EXT_TASK_LOG;
drop index ACT_HI_EXT_TASK_LOG_PROCINST on ACT_HI_EXT_TASK_LOG;
drop index ACT_HI_EXT_TASK_LOG_PROCDEF on ACT_HI_EXT_TASK_LOG;
drop index ACT_HI_EXT_TASK_LOG_PROC_DEF_KEY on ACT_HI_EXT_TASK_LOG;
drop index ACT_HI_EXT_TASK_LOG_TENANT_ID on ACT_HI_EXT_TASK_LOG;
drop index ACT_IDX_HI_EXTTASKLOG_ERRORDET on ACT_HI_EXT_TASK_LOG;
drop index ACT_HI_EXT_TASK_LOG_RM_TIME on ACT_HI_EXT_TASK_LOG;

drop index ACT_HI_BAT_RM_TIME on ACT_HI_BATCH;

drop index ACT_IDX_HI_OP_LOG_ROOT_PI on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_PROCINST on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_PROCDEF on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_TASK on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_RM_TIME on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_TIMESTAMP on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_USER_ID on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_OP_TYPE on ACT_HI_OP_LOG;
drop index ACT_IDX_HI_OP_LOG_ENTITY_TYPE on ACT_HI_OP_LOG;

drop index ACT_IDX_HI_ATTACHMENT_CONTENT on ACT_HI_ATTACHMENT;
drop index ACT_IDX_HI_ATTACHMENT_ROOT_PI on ACT_HI_ATTACHMENT;
drop index ACT_IDX_HI_ATTACHMENT_PROCINST on ACT_HI_ATTACHMENT;
drop index ACT_IDX_HI_ATTACHMENT_TASK on ACT_HI_ATTACHMENT;
drop index ACT_IDX_HI_ATTACHMENT_RM_TIME on ACT_HI_ATTACHMENT;

drop index ACT_IDX_HI_COMMENT_TASK on ACT_HI_COMMENT;
drop index ACT_IDX_HI_COMMENT_ROOT_PI on ACT_HI_COMMENT;
drop index ACT_IDX_HI_COMMENT_PROCINST on ACT_HI_COMMENT;
drop index ACT_IDX_HI_COMMENT_RM_TIME on ACT_HI_COMMENT;

drop table if exists ACT_HI_PROCINST;
drop table if exists ACT_HI_ACTINST;
drop table if exists ACT_HI_VARINST;
drop table if exists ACT_HI_TASKINST;
drop table if exists ACT_HI_DETAIL;
drop table if exists ACT_HI_COMMENT;
drop table if exists ACT_HI_ATTACHMENT;
drop table if exists ACT_HI_OP_LOG;
drop table if exists ACT_HI_INCIDENT;
drop table if exists ACT_HI_JOB_LOG;
drop table if exists ACT_HI_BATCH;
drop table if exists ACT_HI_IDENTITYLINK;
drop table if exists ACT_HI_EXT_TASK_LOG;