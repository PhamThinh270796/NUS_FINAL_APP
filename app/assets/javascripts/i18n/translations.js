I18n.translations || (I18n.translations = {});
I18n.translations["en"] = I18n.extend((I18n.translations["en"] || {}), {"Save":"Save","activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"has_many":"Cannot delete record because dependent %{record} exist","has_one":"Cannot delete record because a dependent %{record} exists"}}}},"already_have_account":"Already have an account ?","back_to_login_page":"Back to Login page","confirmation_password":"Confirmation Password","confirmation_password_must_match_password":"Confirmation password does not match","create_an_account":"Create an account","date":{"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"formats":{"default":"%Y-%m-%d","long":"%B %d, %Y","short":"%b %d"},"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"},"half_a_minute":"half a minute","less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"x_days":{"one":"1 day","other":"%{count} days"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"x_months":{"one":"1 month","other":"%{count} months"},"x_seconds":{"one":"1 second","other":"%{count} seconds"}},"prompts":{"day":"Day","hour":"Hour","minute":"Minute","month":"Month","second":"Seconds","year":"Year"}},"devise":{"confirmations":{"confirmed":"Your email address has been successfully confirmed.","send_instructions":"You will receive an email with instructions for how to confirm your email address in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive an email with instructions for how to confirm your email address in a few minutes."},"failure":{"already_authenticated":"You are already signed in.","inactive":"Your account is not activated yet.","invalid":"Invalid %{authentication_keys} or password.","last_attempt":"You have one more attempt before your account is locked.","locked":"Your account is locked.","not_found_in_database":"Invalid %{authentication_keys} or password.","timeout":"Your session expired. Please sign in again to continue.","unauthenticated":"You need to sign in or sign up before continuing.","unconfirmed":"You have to confirm your email address before continuing."},"mailer":{"confirmation_instructions":{"subject":"Confirmation instructions"},"email_changed":{"subject":"Email Changed"},"password_change":{"subject":"Password Changed"},"reset_password_instructions":{"subject":"Reset password instructions"},"unlock_instructions":{"subject":"Unlock instructions"}},"omniauth_callbacks":{"failure":"Could not authenticate you from %{kind} because \"%{reason}\".","success":"Successfully authenticated from %{kind} account."},"passwords":{"no_token":"You can't access this page without coming from a password reset email. If you do come from a password reset email, please make sure you used the full URL provided.","send_instructions":"You will receive an email with instructions on how to reset your password in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive a password recovery link at your email address in a few minutes.","updated":"Your password has been changed successfully. You are now signed in.","updated_not_active":"Your password has been changed successfully."},"registrations":{"destroyed":"Bye! Your account has been successfully cancelled. We hope to see you again soon.","signed_up":"Welcome! You have signed up successfully.","signed_up_but_inactive":"You have signed up successfully. However, we could not sign you in because your account is not yet activated.","signed_up_but_locked":"You have signed up successfully. However, we could not sign you in because your account is locked.","signed_up_but_unconfirmed":"A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.","update_needs_confirmation":"You updated your account successfully, but we need to verify your new email address. Please check your email and follow the confirm link to confirm your new email address.","updated":"Your account has been updated successfully.","updated_but_not_signed_in":"Your account has been updated successfully, but since your password was changed, you need to sign in again"},"sessions":{"already_signed_out":"Signed out successfully.","signed_in":"Signed in successfully.","signed_out":"Signed out successfully."},"unlocks":{"send_instructions":"You will receive an email with instructions for how to unlock your account in a few minutes.","send_paranoid_instructions":"If your account exists, you will receive an email with instructions for how to unlock it in a few minutes.","unlocked":"Your account has been unlocked successfully. Please sign in to continue."}},"didn't_receive_confirmation_instruction?":"Didn't receive confirmation instructions?","didn't_receive_unlock_instructions?":"Didn't receive unlock instructions?","email":"Email","email_cant_be_blank":"Email can't be blank","email_min_length":"Email length must be greater than 5 characters","errors":{"connection_refused":"Oops! Failed to connect to the Web Console middleware.\nPlease make sure a rails development server is running.\n","format":"%{attribute} %{message}","messages":{"accepted":"must be accepted","already_confirmed":"was already confirmed, please try signing in","blank":"can't be blank","carrierwave_download_error":"could not be downloaded","carrierwave_integrity_error":"is not of an allowed file type","carrierwave_processing_error":"failed to be processed","confirmation":"doesn't match %{attribute}","confirmation_period_expired":"needs to be confirmed within %{period}, please request a new one","content_type_blacklist_error":"You are not allowed to upload %{content_type} files","content_type_whitelist_error":"You are not allowed to upload %{content_type} files, allowed types: %{allowed_types}","empty":"can't be empty","equal_to":"must be equal to %{count}","even":"must be even","exclusion":"is reserved","expired":"has expired, please request a new one","extension_blacklist_error":"You are not allowed to upload %{extension} files, prohibited types: %{prohibited_types}","extension_whitelist_error":"You are not allowed to upload %{extension} files, allowed types: %{allowed_types}","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","inclusion":"is not included in the list","invalid":"is invalid","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","max_size_error":"File size should be less than %{max_size}","min_size_error":"File size should be greater than %{min_size}","mini_magick_processing_error":"Failed to manipulate with MiniMagick, maybe it is not an image? Original Error: %{e}","model_invalid":"Validation failed: %{errors}","not_a_number":"is not a number","not_an_integer":"must be an integer","not_found":"not found","not_locked":"was not locked","not_saved":{"one":"1 error prohibited this %{resource} from being saved:","other":"%{count} errors prohibited this %{resource} from being saved:"},"odd":"must be odd","other_than":"must be other than %{count}","present":"must be blank","required":"must exist","rmagick_processing_error":"Failed to manipulate with rmagick, maybe it is not an image?","taken":"has already been taken","too_long":{"one":"is too long (maximum is 1 character)","other":"is too long (maximum is %{count} characters)"},"too_short":{"one":"is too short (minimum is 1 character)","other":"is too short (minimum is %{count} characters)"},"wrong_length":{"one":"is the wrong length (should be 1 character)","other":"is the wrong length (should be %{count} characters)"}},"unacceptable_request":"A supported version is expected in the Accept header.\n","unavailable_session":"Session %{id} is no longer available in memory.\n\nIf you happen to run on a multi-process server (like Unicorn or Puma) the process\nthis request hit doesn't store %{id} in memory. Consider turning the number of\nprocesses/workers to one (1) or using a different server in development.\n"},"first_name":"First Name","first_name_cant_be_blank":"Last name can't be blank","flash":{"actions":{"create":{"notice":"%{resource_name} was successfully created."},"destroy":{"alert":"%{resource_name} could not be destroyed.","notice":"%{resource_name} was successfully destroyed."},"update":{"notice":"%{resource_name} was successfully updated."}}},"forgot":"Forgot","forgot_your_password":"Forgot your password?","fotobook_login":"Fotobook Login","helpers":{"page_entries_info":{"entry":{"one":"entry","other":"entries","zero":"entries"},"more_pages":{"display_entries":"Displaying %{entry_name} \u003cb\u003e%{first}\u0026nbsp;-\u0026nbsp;%{last}\u003c/b\u003e of \u003cb\u003e%{total}\u003c/b\u003e in total"},"one_page":{"display_entries":{"one":"Displaying \u003cb\u003e1\u003c/b\u003e %{entry_name}","other":"Displaying \u003cb\u003eall %{count}\u003c/b\u003e %{entry_name}","zero":"No %{entry_name} found"}}},"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","submit":"Save %{model}","update":"Update %{model}"}},"last_name":"Last Name","last_name_cant_be_blank":"First name can't be blank","log_out":"Log Out","login":"Login","my_albums":"My Albums","my_feeds":"My Feeds","my_photos":"My Photos","number":{"currency":{"format":{"delimiter":",","format":"%u%n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"Billion","million":"Million","quadrillion":"Quadrillion","thousand":"Thousand","trillion":"Trillion","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"eb":"EB","gb":"GB","kb":"KB","mb":"MB","pb":"PB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"password":"Password","password_cant_be_blank":"Password can't be blank","password_min_length":"Password length must be greater than 5 characters","password_recovery":"Password Recovery","recovery":"Recovery","remember_me":"Remember Me","resend_confirmation_instructions":"Resend confirmation instructions","sign_up":"Sign Up","support":{"array":{"last_word_connector":", and ","two_words_connector":" and ","words_connector":", "}},"time":{"am":"am","formats":{"default":"%a, %d %b %Y %H:%M:%S %z","long":"%B %d, %Y %H:%M","short":"%d %b %H:%M"},"pm":"pm"},"user_pass":"Username / Password?","valid_email":"Please enter a valid email","views":{"pagination":{"first":"\u0026laquo; First","last":"Last \u0026raquo;","next":"Next \u0026rsaquo;","previous":"\u0026lsaquo; Prev","truncate":"\u0026hellip;"}}});
I18n.translations["vi"] = I18n.extend((I18n.translations["vi"] || {}), {"Save":"Save","activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"has_many":"Cannot delete record because dependent %{record} exist","has_one":"Cannot delete record because a dependent %{record} exists"}}}},"already_have_account":"Already have an account ?","back_to_login_page":"Back to Login page","confirmation_password":"Confirmation Password","confirmation_password_must_match_password":"Confirmation password does not match","create_an_account":"Create an account","date":{"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"formats":{"default":"%Y-%m-%d","long":"%B %d, %Y","short":"%b %d"},"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"},"half_a_minute":"half a minute","less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"x_days":{"one":"1 day","other":"%{count} days"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"x_months":{"one":"1 month","other":"%{count} months"},"x_seconds":{"one":"1 second","other":"%{count} seconds"}},"prompts":{"day":"Day","hour":"Hour","minute":"Minute","month":"Month","second":"Seconds","year":"Year"}},"devise":{"confirmations":{"confirmed":"Your email address has been successfully confirmed.","send_instructions":"You will receive an email with instructions for how to confirm your email address in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive an email with instructions for how to confirm your email address in a few minutes."},"failure":{"already_authenticated":"You are already signed in.","inactive":"Your account is not activated yet.","invalid":"Invalid %{authentication_keys} or password.","last_attempt":"You have one more attempt before your account is locked.","locked":"Your account is locked.","not_found_in_database":"Invalid %{authentication_keys} or password.","timeout":"Your session expired. Please sign in again to continue.","unauthenticated":"You need to sign in or sign up before continuing.","unconfirmed":"You have to confirm your email address before continuing."},"mailer":{"confirmation_instructions":{"subject":"Confirmation instructions"},"email_changed":{"subject":"Email Changed"},"password_change":{"subject":"Password Changed"},"reset_password_instructions":{"subject":"Reset password instructions"},"unlock_instructions":{"subject":"Unlock instructions"}},"omniauth_callbacks":{"failure":"Could not authenticate you from %{kind} because \"%{reason}\".","success":"Successfully authenticated from %{kind} account."},"passwords":{"no_token":"You can't access this page without coming from a password reset email. If you do come from a password reset email, please make sure you used the full URL provided.","send_instructions":"You will receive an email with instructions on how to reset your password in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive a password recovery link at your email address in a few minutes.","updated":"Your password has been changed successfully. You are now signed in.","updated_not_active":"Your password has been changed successfully."},"registrations":{"destroyed":"Bye! Your account has been successfully cancelled. We hope to see you again soon.","signed_up":"Welcome! You have signed up successfully.","signed_up_but_inactive":"You have signed up successfully. However, we could not sign you in because your account is not yet activated.","signed_up_but_locked":"You have signed up successfully. However, we could not sign you in because your account is locked.","signed_up_but_unconfirmed":"A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.","update_needs_confirmation":"You updated your account successfully, but we need to verify your new email address. Please check your email and follow the confirm link to confirm your new email address.","updated":"Your account has been updated successfully.","updated_but_not_signed_in":"Your account has been updated successfully, but since your password was changed, you need to sign in again"},"sessions":{"already_signed_out":"Signed out successfully.","signed_in":"Signed in successfully.","signed_out":"Signed out successfully."},"unlocks":{"send_instructions":"You will receive an email with instructions for how to unlock your account in a few minutes.","send_paranoid_instructions":"If your account exists, you will receive an email with instructions for how to unlock it in a few minutes.","unlocked":"Your account has been unlocked successfully. Please sign in to continue."}},"didn't_receive_confirmation_instruction?":"Didn't receive confirmation instructions?","didn't_receive_unlock_instructions?":"Didn't receive unlock instructions?","email":"Email","email_cant_be_blank":"Email can't be blank","email_min_length":"Email length must be greater than 5 characters","errors":{"connection_refused":"Oops! Failed to connect to the Web Console middleware.\nPlease make sure a rails development server is running.\n","format":"%{attribute} %{message}","messages":{"accepted":"must be accepted","already_confirmed":"was already confirmed, please try signing in","blank":"can't be blank","carrierwave_download_error":"could not be downloaded","carrierwave_integrity_error":"is not of an allowed file type","carrierwave_processing_error":"failed to be processed","confirmation":"doesn't match %{attribute}","confirmation_period_expired":"needs to be confirmed within %{period}, please request a new one","content_type_blacklist_error":"You are not allowed to upload %{content_type} files","content_type_whitelist_error":"You are not allowed to upload %{content_type} files, allowed types: %{allowed_types}","empty":"can't be empty","equal_to":"must be equal to %{count}","even":"must be even","exclusion":"is reserved","expired":"has expired, please request a new one","extension_blacklist_error":"You are not allowed to upload %{extension} files, prohibited types: %{prohibited_types}","extension_whitelist_error":"You are not allowed to upload %{extension} files, allowed types: %{allowed_types}","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","inclusion":"is not included in the list","invalid":"is invalid","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","max_size_error":"File size should be less than %{max_size}","min_size_error":"File size should be greater than %{min_size}","mini_magick_processing_error":"Failed to manipulate with MiniMagick, maybe it is not an image? Original Error: %{e}","model_invalid":"Validation failed: %{errors}","not_a_number":"is not a number","not_an_integer":"must be an integer","not_found":"not found","not_locked":"was not locked","not_saved":{"one":"1 error prohibited this %{resource} from being saved:","other":"%{count} errors prohibited this %{resource} from being saved:"},"odd":"must be odd","other_than":"must be other than %{count}","present":"must be blank","required":"must exist","rmagick_processing_error":"Failed to manipulate with rmagick, maybe it is not an image?","taken":"has already been taken","too_long":{"one":"is too long (maximum is 1 character)","other":"is too long (maximum is %{count} characters)"},"too_short":{"one":"is too short (minimum is 1 character)","other":"is too short (minimum is %{count} characters)"},"wrong_length":{"one":"is the wrong length (should be 1 character)","other":"is the wrong length (should be %{count} characters)"}},"unacceptable_request":"A supported version is expected in the Accept header.\n","unavailable_session":"Session %{id} is no longer available in memory.\n\nIf you happen to run on a multi-process server (like Unicorn or Puma) the process\nthis request hit doesn't store %{id} in memory. Consider turning the number of\nprocesses/workers to one (1) or using a different server in development.\n"},"first_name":"First Name","first_name_cant_be_blank":"Last name can't be blank","flash":{"actions":{"create":{"notice":"%{resource_name} was successfully created."},"destroy":{"alert":"%{resource_name} could not be destroyed.","notice":"%{resource_name} was successfully destroyed."},"update":{"notice":"%{resource_name} was successfully updated."}}},"forgot":"Forgot","forgot_your_password":"Forgot your password?","fotobook_login":"Fotobook Login","helpers":{"page_entries_info":{"entry":{"one":"entry","other":"entries","zero":"entries"},"more_pages":{"display_entries":"Displaying %{entry_name} \u003cb\u003e%{first}\u0026nbsp;-\u0026nbsp;%{last}\u003c/b\u003e of \u003cb\u003e%{total}\u003c/b\u003e in total"},"one_page":{"display_entries":{"one":"Displaying \u003cb\u003e1\u003c/b\u003e %{entry_name}","other":"Displaying \u003cb\u003eall %{count}\u003c/b\u003e %{entry_name}","zero":"No %{entry_name} found"}}},"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","submit":"Save %{model}","update":"Update %{model}"}},"last_name":"Last Name","last_name_cant_be_blank":"First name can't be blank","log_out":"Log Out","login":"Login","my_albums":"My Albums","my_feeds":"My Feeds","my_photos":"My Photos","number":{"currency":{"format":{"delimiter":",","format":"%u%n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"Billion","million":"Million","quadrillion":"Quadrillion","thousand":"Thousand","trillion":"Trillion","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"eb":"EB","gb":"GB","kb":"KB","mb":"MB","pb":"PB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"password":"Password","password_cant_be_blank":"Password can't be blank","password_min_length":"Password length must be greater than 5 characters","password_recovery":"Password Recovery","recovery":"Recovery","remember_me":"Remember Me","resend_confirmation_instructions":"Resend confirmation instructions","sign_up":"Sign Up","support":{"array":{"last_word_connector":", and ","two_words_connector":" and ","words_connector":", "}},"time":{"am":"am","formats":{"default":"%a, %d %b %Y %H:%M:%S %z","long":"%B %d, %Y %H:%M","short":"%d %b %H:%M"},"pm":"pm"},"user_pass":"Username / Password?","valid_email":"Please enter a valid email","views":{"pagination":{"first":"\u0026laquo; First","last":"Last \u0026raquo;","next":"Next \u0026rsaquo;","previous":"\u0026lsaquo; Prev","truncate":"\u0026hellip;"}}});
