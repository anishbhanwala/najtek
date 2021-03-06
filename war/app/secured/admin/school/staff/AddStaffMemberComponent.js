function AddStaffMemberController($scope, StaffMember, UserSearch, ShowValidationErrorService, $log) {
	var self = this;

	self.staffMember = new StaffMember();
	self.staffMember.schoolId = self.resolve.school.id;
	self.staffMember.organizationId = self.resolve.school.organizationId;

	self.schoolName = self.resolve.school.name;

	self.submit = function(addStaffMemberForm) {
		self.staffMember.$save(function(result) {
            console.log(result);
            self.modalInstance.close(result);
        }, function (errorResult) {
            ShowValidationErrorService.process(errorResult, addStaffMemberForm);
        });
	};

	self.reset = function() {
		self.staffMember = new StaffMember();
		$scope.myForm.$setPristine();
	};

    self.cancel = function () {
        self.modalInstance.dismiss('cancel');
    };

    self.searchUsers = function(username) {
        return UserSearch.query({username: username})
                .$promise.then(function(response) {
                    return response;
                });
    };

    self.userSelected = function (user) {
        self.staffMember.username = user.username;
        self.staffMember.userId = user.id;
    };

    self.showFieldsExceptUsername = function() {
        return !self.staffMember.userId;
    };

    self.usernameChanged = function() {
        self.staffMember.userId = 0;
    };
}

angular.module('NAJTek')
    .component('ntAddStaffMemberComponent', {
        templateUrl : function(AppConstant) {
            return AppConstant.HTML_PATH_SECURED_PREFIX
                    + 'admin/school/staff/addStaffMember.html'
        },
        controller : AddStaffMemberController,
        controllerAs : 'addStaffMemberCtrl',
        bindings: {
            modalInstance: '<',
            resolve: '<'
        }
    });