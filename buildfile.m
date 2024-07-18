function plan = buildfile
% Create a plan from the task functions
plan = buildplan(localfunctions);

% Make the "archive" task the default task in the plan
plan.DefaultTasks = "archive1";

% Make the "archive" task dependent on the "check" and "test" tasks
plan("archive1").Dependencies = ["check1" "test1"];
plan("archive2").Dependencies = ["check2" "test2"];
end

function check1Task(~)
% 
% issues = codeIssues;
% assert(isempty(issues.Issues),formattedDisplayText( ...
%    issues.Issues(:,["Location" "Severity" "Description"])))
% assert(false);
pause(10)
end

function test1Task(~)
% 
% results = runtests(IncludeSubfolders=true,OutputDetail="terse");
% assertSuccess(results);
error("haha");
%disp('In test task');
end

function archive1Task(~)
% 
% zipFileName = "source_" + ...
%     string(datetime("now",Format="yyyyMMdd'T'HHmmss"));
% zip(zipFileName,"*")
disp('In archive task');
end

function check2Task(~)
% Identify code issues
% issues = codeIssues;
% assert(isempty(issues.Issues),formattedDisplayText( ...
%    issues.Issues(:,["Location" "Severity" "Description"])))
disp('In check task');
end

function test2Task(~)
% Run unit tests
% results = runtests(IncludeSubfolders=true,OutputDetail="terse");
% assertSuccess(results);
disp('In test task');
end

function archive2Task(~)
% Create ZIP file
% zipFileName = "source_" + ...
%     string(datetime("now",Format="yyyyMMdd'T'HHmmss"));
% zip(zipFileName,"*")
disp('In archive task');
end

%function testTask(~)
% Create ZIP file
% zipFileName = "source_" + ...
%     string(datetime("now",Format="yyyyMMdd'T'HHmmss"));
% zip(zipFileName,"*")
%a=b;
%end
