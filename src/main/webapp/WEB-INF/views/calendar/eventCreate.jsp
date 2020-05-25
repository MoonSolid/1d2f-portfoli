<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal-header">
	<h2 class="modal-title fs--18 m-0">일정 추가</h2>

	<button type="button" class="close pointer" data-dismiss="modal"
		aria-label="Close">
		<span class="fi fi-close fs--18" aria-hidden="true"></span>
	</button>
</div>

<div class="modal-body p--30">

	<form class="bs-validate js-ajax" novalidate action="eventCreate" method="POST" data-modal-autoclose-on-success="true"
		data-modal-autoclose-on-success-delay="800"
		data-ajax-container="#ajax_response_container"
		data-ajax-update-url="false" data-ajax-show-loading-icon="true"
		data-error-toast-text="<i class='fi fi-circle-spin fi-spin float-start'></i> Please, complete all required fields!"
		data-error-toast-delay="3000" data-error-toast-position="top-center"
		data-error-scroll-up="true" data-ajax-callback-function="">

		<input type="hidden" name="action" value="add_event">
		<!-- <input type="hidden" id="event_id" name="id" value=''> -->


		<div class="bg-light pl--20 pr--20 pt--20 mb-4 rounded">

			<div class="row">

				<div class="col-12 col-lg-6 mb-3">

					<div class="form-label-group">

						<input required autocomplete="off" type="text"
							class="form-control rangepicker" data-load-delay="800"
							data-single-datepicker="true" data-timepicker="true"
							data-timepicker-24h="false" data-timepicker-show-seconds="false"
							data-disable-auto-update-input="true" data-date-start=""
							data-date-format="YYYY-MM-DD HH:mm"
							data-quick-locale='{
                    "lang_apply"  : "적용",
                    "lang_cancel" : "취소",
                    "lang_months"   : ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    "lang_weekdays" : ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
                  }'
							placeholder="Event Date Start" name="start" id="start"
							value=${start}> <label for="start">시작일</label> <a
							href="#"
							class="btn btn-rangepicker-clear position-absolute end-0 top-0 z-index-2 fi fi-close"></a>

					</div>


				</div>

				<div class="col-12 col-lg-6 mb-3">

					<div class="form-label-group">

						<input autocomplete="off" type="text"
							class="form-control rangepicker" data-single-datepicker="true"
							data-timepicker="true" data-timepicker-24h="false"
							data-timepicker-show-seconds="false"
							data-disable-auto-update-input="true" data-date-start=""
							data-date-format="YYYY-MM-DD HH:mm"
							data-quick-locale='{
                    "lang_apply"  : "적용",
                    "lang_cancel" : "취소",
                    "lang_months"   : ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    "lang_weekdays" : ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
                  }'
							placeholder="Event Date End" name="end" id="end"> 
							<label for="end">종료일</label> <a href="#" class="btn btn-rangepicker-clear position-absolute end-0 top-0 z-index-2 fi fi-close"></a>

					</div>

				</div>

			</div>


		</div>


		<div class="form-label-group mb-3">
			<input required placeholder="Event Name" id="title" name="title" type="text" value="" class="form-control"><label for="title">일정 이름</label>
		</div>

		<select class="form-control bs-select mb-3" id="className"
			name="className" title="Please Select...">
			<option value="bg-primary border-primary text-white" selected="" data-content="<span class='bg-primary border-primary text-white p--3 pl--5 pr--5 rounded fs--14'>Primary</span>">Primary</option>
			<option value="bg-secondary border-secondary text-white" data-content="<span class='bg-secondary border-secondary text-white p--3 pl--5 pr--5 rounded fs--14'>Secondary</span>">Secondary</option>
			<option value="bg-dark border-dark text-white" data-content="<span class='bg-dark border-dark text-white p--3 pl--5 pr--5 rounded fs--14'>Dark</span>">Dark</option>
			<option value="bg-light border-light text-dark" data-content="<span class='bg-light border-light text-dark p--3 pl--5 pr--5 rounded fs--14'>Light</span>">Light</option>
			<option value="bg-success border-success text-white" data-content="<span class='bg-success border-success text-white p--3 pl--5 pr--5 rounded fs--14'>Success</span>">Success</option>
			<option value="bg-warning border-warning text-dark" data-content="<span class='bg-warning border-warning text-dark p--3 pl--5 pr--5 rounded fs--14'>Warning</span>">Warning</option>
			<option value="bg-danger border-danger text-white" data-content="<span class='bg-danger border-danger text-white p--3 pl--5 pr--5 rounded fs--14'>Danger</span>">Danger</option>
			<option value="bg-info border-info text-white" data-content="<span class='bg-info border-info text-white p--3 pl--5 pr--5 rounded fs--14'>Info</span>">Info</option>
			<option value="bg-purple border-purple text-white" data-content="<span class='bg-purple border-purple text-white p--3 pl--5 pr--5 rounded fs--14'>Purple</span>">Purple</option>
			<option value="bg-indigo border-indigo text-white" data-content="<span class='bg-indigo border-indigo text-white p--3 pl--5 pr--5 rounded fs--14'>Indigo</span>">Indigo</option>
			<option value="bg-pink border-pink text-white" data-content="<span class='bg-pink border-pink text-white p--3 pl--5 pr--5 rounded fs--14'>Pink</span>">Pink</option>
			<option data-divider="true"></option>
			<option value="bg-primary-soft border-primary-soft" data-content="<span class='bg-primary-soft border-primary-soft p--3 pl--5 pr--5 rounded fs--14'>Primary</span>">Primary Soft</option>
			<option value="bg-secondary-soft border-secondary-soft" data-content="<span class='bg-secondary-soft border-secondary-soft p--3 pl--5 pr--5 rounded fs--14'>Secondary</span>">Secondary Soft</option>
			<option value="bg-dark-soft border-dark-soft" data-content="<span class='bg-dark-soft border-dark-soft p--3 pl--5 pr--5 rounded fs--14'>Dark</span>">Dark 	Soft</option>
			<option value="bg-success-soft border-success-soft" data-content="<span class='bg-success-soft border-success-soft p--3 pl--5 pr--5 rounded fs--14'>Success</span>">Success Soft</option>
			<option value="bg-warning-soft border-warning-soft" data-content="<span class='bg-warning-soft border-warning-soft p--3 pl--5 pr--5 rounded fs--14'>Warning</span>">Warning Soft</option>
			<option value="bg-danger-soft border-danger-soft" data-content="<span class='bg-danger-soft border-danger-soft p--3 pl--5 pr--5 rounded fs--14'>Danger</span>">Danger Soft</option>
			<option value="bg-info-soft border-info-soft" data-content="<span class='bg-info-soft border-info-soft p--3 pl--5 pr--5 rounded fs--14'>Info</span>">Info Soft</option>
			<option value="bg-purple-soft border-purple-soft" data-content="<span class='bg-purple-soft border-purple-soft p--3 pl--5 pr--5 rounded fs--14'>Purple</span>">Purple Soft</option>
			<option value="bg-indigo-soft border-indigo-soft" data-content="<span class='bg-indigo-soft border-indigo-soft p--3 pl--5 pr--5 rounded fs--14'>Indigo</span>">Indigo Soft</option>
			<option value="bg-pink-soft border-pink-soft" data-content="<span class='bg-pink-soft border-pink-soft p--3 pl--5 pr--5 rounded fs--14'>Pink</span>">Pink Soft</option>
		</select>


		<div class="form-label-group mb-3">
			<textarea placeholder="Event Description" id="description" name="description" class="form-control" rows="3"></textarea>
			<label for="description">일정 상세</label>
		</div>

		<button type="submit" class="btn-fullcalendar-add btn btn-primary btn-soft btn-block">일정 추가</button>

	</form>

</div>

