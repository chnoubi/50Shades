#include "registrar.h"
static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSNotification * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, const char *r0, const char *r1, const char *r2)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIButton * native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIButton * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIButton * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSString * native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSString * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static NSInteger native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIView * native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, UIView * p3, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4, const char *r5)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj3 = NULL;
	MonoObject *mobj3 = NULL;
	int32_t created3 = false;
	MonoType *paramtype3 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[4] = { r0, r1, r2, r3 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r4, r5, 4, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;
	nsobj3 = (NSObject *) p3;
	if (nsobj3) {
		paramtype3 = xamarin_get_parameter_type (managed_method, 3);
		mobj3 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [3] = mobj3;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_generic_method_direct (mthis, r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static NSInteger native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	NSInteger res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UITableViewCell * native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITableViewCell * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIPickerView * native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIPickerView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIImageView * native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIImageView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImageView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UILabel * native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UILabel * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILabel * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIStoryboardSegue * p0, NSObject * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIView * native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UITextView * native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITextView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIDatePicker * native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIDatePicker * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIDatePicker * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UITextField * native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITextField * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIWindow * native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIWindow * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_33 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_34 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSData * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static id native_to_managed_trampoline_35 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1, bool* call_super)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static UITableView * native_to_managed_trampoline_36 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITableView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_37 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static MKMapView * native_to_managed_trampoline_38 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	MKMapView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_39 (id self, SEL _cmd, MonoMethod **managed_method_ptr, MKMapView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UINavigationItem * native_to_managed_trampoline_40 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UINavigationItem * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_41 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UINavigationItem * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_42 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_43 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_44 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_45 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, BOOL p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_46 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIView * native_to_managed_trampoline_47 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_48 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, CGPoint p1, CGPoint* p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_49 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, CGFloat p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_50 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_51 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_52 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_53 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSTextAttachment * p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static BOOL native_to_managed_trampoline_54 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSURL * p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_55 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_56 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, const char *r0, const char *r1, const char *r2)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr, &exception_gchandle));
		if (exception_gchandle != 0) goto exception_handling;
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}



@protocol CALayerDelegate
@end

@protocol UIPickerViewModel<UIPickerViewDataSource, UIPickerViewDelegate>
@end

@interface Foundation_InternalNSNotificationHandler : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) post:(NSNotification *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Foundation_InternalNSNotificationHandler { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) post:(NSNotification *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, "Foundation.NSNotification, Xamarin.iOS", "Foundation.InternalNSNotificationHandler, Xamarin.iOS", "Post");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Foundation.NSActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface UIKit_UIControlEventProxy : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIControlEventProxy { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "UIKit.UIControlEventProxy, Xamarin.iOS", "Activated");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface BurgersNearMeViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation BurgersNearMeViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.BurgersNearMeViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.BurgersNearMeViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface GoldenBurgerViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation GoldenBurgerViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.GoldenBurgerViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.GoldenBurgerViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface IntroViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnSkipIntro;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnSkipIntro;
	-(void) setBtnSkipIntro:(UIButton *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation IntroViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnSkipIntro
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.IntroViewController, 50ShadesOfBurgers", "get_btnSkipIntro");
	}

	-(void) setBtnSkipIntro:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.IntroViewController, 50ShadesOfBurgers", "set_btnSkipIntro");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.IntroViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.IntroViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface _50ShadesOfBurgers_Model_CustomTop10Cell : UITableViewCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation _50ShadesOfBurgers_Model_CustomTop10Cell { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Model.CustomTop10Cell, 50ShadesOfBurgers", "LayoutSubviews");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface _50ShadesOfBurgers_Model_ListPickerViewModel_1 : NSObject<UIPickerViewModel> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1;
	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2;
	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2;
	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0;
	-(UIView *) pickerView:(UIPickerView *)p0 viewForRow:(NSInteger)p1 forComponent:(NSInteger)p2 reusingView:(UIView *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation _50ShadesOfBurgers_Model_ListPickerViewModel_1 { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, p1, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", "GetRowsInComponent");
	}

	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", "GetTitle");
	}

	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", "Selected");
	}

	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", "GetComponentCount");
	}

	-(UIView *) pickerView:(UIPickerView *)p0 viewForRow:(NSInteger)p1 forComponent:(NSInteger)p2 reusingView:(UIView *)p3
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, p2, p3, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", "GetView");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type '_50ShadesOfBurgers.Model.ListPickerViewModel`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface _50ShadesOfBurgers_Model_LoadingOverlay : UIView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation _50ShadesOfBurgers_Model_LoadingOverlay { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface _50ShadesOfBurgers_Model_QuestionPickerViewModel_1 : NSObject<UIPickerViewModel> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1;
	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2;
	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2;
	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0;
	-(UIView *) pickerView:(UIPickerView *)p0 viewForRow:(NSInteger)p1 forComponent:(NSInteger)p2 reusingView:(UIView *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation _50ShadesOfBurgers_Model_QuestionPickerViewModel_1 { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, p1, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", "GetRowsInComponent");
	}

	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", "GetTitle");
	}

	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", "Selected");
	}

	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", "GetComponentCount");
	}

	-(UIView *) pickerView:(UIPickerView *)p0 viewForRow:(NSInteger)p1 forComponent:(NSInteger)p2 reusingView:(UIView *)p3
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, p2, p3, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", "GetView");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type '_50ShadesOfBurgers.Model.QuestionPickerViewModel`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface _50ShadesOfBurgers_Model_Top10DataSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation _50ShadesOfBurgers_Model_Top10DataSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.Model.Top10DataSource, 50ShadesOfBurgers", "RowsInSection");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.Model.Top10DataSource, 50ShadesOfBurgers", "GetCell");
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.Model.Top10DataSource, 50ShadesOfBurgers", "RowSelected");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface NoInternetViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation NoInternetViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionFourFiveViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnNext;
	@property (nonatomic, assign) UIPickerView * pickerBeaute;
	@property (nonatomic, assign) UIPickerView * pickerTenue;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnNext;
	-(void) setBtnNext:(UIButton *)p0;
	-(UIPickerView *) pickerBeaute;
	-(void) setPickerBeaute:(UIPickerView *)p0;
	-(UIPickerView *) pickerTenue;
	-(void) setPickerTenue:(UIPickerView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionFourFiveViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnNext
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "get_btnNext");
	}

	-(void) setBtnNext:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "set_btnNext");
	}

	-(UIPickerView *) pickerBeaute
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "get_pickerBeaute");
	}

	-(void) setPickerBeaute:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "set_pickerBeaute");
	}

	-(UIPickerView *) pickerTenue
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "get_pickerTenue");
	}

	-(void) setPickerTenue:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "set_pickerTenue");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionnaireIntroViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionnaireIntroViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireIntroViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionnaireIntroViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionOneViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIImageView * bgrImage;
	@property (nonatomic, assign) UIButton * btnBunGrade1;
	@property (nonatomic, assign) UIButton * btnBunGrade2;
	@property (nonatomic, assign) UIButton * btnBunGrade3;
	@property (nonatomic, assign) UIButton * btnBunGrade4;
	@property (nonatomic, assign) UIButton * btnMeatGrade1;
	@property (nonatomic, assign) UIButton * btnMeatGrade2;
	@property (nonatomic, assign) UIButton * btnMeatGrade3;
	@property (nonatomic, assign) UIButton * btnMeatGrade4;
	@property (nonatomic, assign) UIButton * btnNext;
	@property (nonatomic, assign) UIButton * btnSaladGrade1;
	@property (nonatomic, assign) UIButton * btnSaladGrade2;
	@property (nonatomic, assign) UIButton * btnSaladGrade3;
	@property (nonatomic, assign) UIButton * btnSaladGrade4;
	@property (nonatomic, assign) UIButton * btnSauceGrade1;
	@property (nonatomic, assign) UIButton * btnSauceGrade2;
	@property (nonatomic, assign) UIButton * btnSauceGrade3;
	@property (nonatomic, assign) UIButton * btnSauceGrade4;
	@property (nonatomic, assign) UILabel * lblBun;
	@property (nonatomic, assign) UILabel * lblMeat;
	@property (nonatomic, assign) UILabel * lblSalad;
	@property (nonatomic, assign) UILabel * lblSauce;
	@property (nonatomic, assign) UILabel * lblTaste;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIImageView *) bgrImage;
	-(void) setBgrImage:(UIImageView *)p0;
	-(UIButton *) btnBunGrade1;
	-(void) setBtnBunGrade1:(UIButton *)p0;
	-(UIButton *) btnBunGrade2;
	-(void) setBtnBunGrade2:(UIButton *)p0;
	-(UIButton *) btnBunGrade3;
	-(void) setBtnBunGrade3:(UIButton *)p0;
	-(UIButton *) btnBunGrade4;
	-(void) setBtnBunGrade4:(UIButton *)p0;
	-(UIButton *) btnMeatGrade1;
	-(void) setBtnMeatGrade1:(UIButton *)p0;
	-(UIButton *) btnMeatGrade2;
	-(void) setBtnMeatGrade2:(UIButton *)p0;
	-(UIButton *) btnMeatGrade3;
	-(void) setBtnMeatGrade3:(UIButton *)p0;
	-(UIButton *) btnMeatGrade4;
	-(void) setBtnMeatGrade4:(UIButton *)p0;
	-(UIButton *) btnNext;
	-(void) setBtnNext:(UIButton *)p0;
	-(UIButton *) btnSaladGrade1;
	-(void) setBtnSaladGrade1:(UIButton *)p0;
	-(UIButton *) btnSaladGrade2;
	-(void) setBtnSaladGrade2:(UIButton *)p0;
	-(UIButton *) btnSaladGrade3;
	-(void) setBtnSaladGrade3:(UIButton *)p0;
	-(UIButton *) btnSaladGrade4;
	-(void) setBtnSaladGrade4:(UIButton *)p0;
	-(UIButton *) btnSauceGrade1;
	-(void) setBtnSauceGrade1:(UIButton *)p0;
	-(UIButton *) btnSauceGrade2;
	-(void) setBtnSauceGrade2:(UIButton *)p0;
	-(UIButton *) btnSauceGrade3;
	-(void) setBtnSauceGrade3:(UIButton *)p0;
	-(UIButton *) btnSauceGrade4;
	-(void) setBtnSauceGrade4:(UIButton *)p0;
	-(UILabel *) lblBun;
	-(void) setLblBun:(UILabel *)p0;
	-(UILabel *) lblMeat;
	-(void) setLblMeat:(UILabel *)p0;
	-(UILabel *) lblSalad;
	-(void) setLblSalad:(UILabel *)p0;
	-(UILabel *) lblSauce;
	-(void) setLblSauce:(UILabel *)p0;
	-(UILabel *) lblTaste;
	-(void) setLblTaste:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionOneViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIImageView *) bgrImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_bgrImage");
	}

	-(void) setBgrImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_bgrImage");
	}

	-(UIButton *) btnBunGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnBunGrade1");
	}

	-(void) setBtnBunGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnBunGrade1");
	}

	-(UIButton *) btnBunGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnBunGrade2");
	}

	-(void) setBtnBunGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnBunGrade2");
	}

	-(UIButton *) btnBunGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnBunGrade3");
	}

	-(void) setBtnBunGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnBunGrade3");
	}

	-(UIButton *) btnBunGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnBunGrade4");
	}

	-(void) setBtnBunGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnBunGrade4");
	}

	-(UIButton *) btnMeatGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnMeatGrade1");
	}

	-(void) setBtnMeatGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnMeatGrade1");
	}

	-(UIButton *) btnMeatGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnMeatGrade2");
	}

	-(void) setBtnMeatGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnMeatGrade2");
	}

	-(UIButton *) btnMeatGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnMeatGrade3");
	}

	-(void) setBtnMeatGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnMeatGrade3");
	}

	-(UIButton *) btnMeatGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnMeatGrade4");
	}

	-(void) setBtnMeatGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnMeatGrade4");
	}

	-(UIButton *) btnNext
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnNext");
	}

	-(void) setBtnNext:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnNext");
	}

	-(UIButton *) btnSaladGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSaladGrade1");
	}

	-(void) setBtnSaladGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSaladGrade1");
	}

	-(UIButton *) btnSaladGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSaladGrade2");
	}

	-(void) setBtnSaladGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSaladGrade2");
	}

	-(UIButton *) btnSaladGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSaladGrade3");
	}

	-(void) setBtnSaladGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSaladGrade3");
	}

	-(UIButton *) btnSaladGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSaladGrade4");
	}

	-(void) setBtnSaladGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSaladGrade4");
	}

	-(UIButton *) btnSauceGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSauceGrade1");
	}

	-(void) setBtnSauceGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSauceGrade1");
	}

	-(UIButton *) btnSauceGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSauceGrade2");
	}

	-(void) setBtnSauceGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSauceGrade2");
	}

	-(UIButton *) btnSauceGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSauceGrade3");
	}

	-(void) setBtnSauceGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSauceGrade3");
	}

	-(UIButton *) btnSauceGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_btnSauceGrade4");
	}

	-(void) setBtnSauceGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_btnSauceGrade4");
	}

	-(UILabel *) lblBun
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_lblBun");
	}

	-(void) setLblBun:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_lblBun");
	}

	-(UILabel *) lblMeat
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_lblMeat");
	}

	-(void) setLblMeat:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_lblMeat");
	}

	-(UILabel *) lblSalad
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_lblSalad");
	}

	-(void) setLblSalad:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_lblSalad");
	}

	-(UILabel *) lblSauce
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_lblSauce");
	}

	-(void) setLblSauce:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_lblSauce");
	}

	-(UILabel *) lblTaste
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "get_lblTaste");
	}

	-(void) setLblTaste:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "set_lblTaste");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", "ViewDidAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionSixSevenViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnNext;
	@property (nonatomic, assign) UIPickerView * pickerDouceur;
	@property (nonatomic, assign) UIPickerView * pickerFumet;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnNext;
	-(void) setBtnNext:(UIButton *)p0;
	-(UIPickerView *) pickerDouceur;
	-(void) setPickerDouceur:(UIPickerView *)p0;
	-(UIPickerView *) pickerFumet;
	-(void) setPickerFumet:(UIPickerView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionSixSevenViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnNext
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "get_btnNext");
	}

	-(void) setBtnNext:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "set_btnNext");
	}

	-(UIPickerView *) pickerDouceur
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "get_pickerDouceur");
	}

	-(void) setPickerDouceur:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "set_pickerDouceur");
	}

	-(UIPickerView *) pickerFumet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "get_pickerFumet");
	}

	-(void) setPickerFumet:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "set_pickerFumet");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionTwoThreeViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnNext;
	@property (nonatomic, assign) UIPickerView * pickerGarniture;
	@property (nonatomic, assign) UIPickerView * pickerSauce;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnNext;
	-(void) setBtnNext:(UIButton *)p0;
	-(UIPickerView *) pickerGarniture;
	-(void) setPickerGarniture:(UIPickerView *)p0;
	-(UIPickerView *) pickerSauce;
	-(void) setPickerSauce:(UIPickerView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionTwoThreeViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnNext
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "get_btnNext");
	}

	-(void) setBtnNext:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "set_btnNext");
	}

	-(UIPickerView *) pickerGarniture
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "get_pickerGarniture");
	}

	-(void) setPickerGarniture:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "set_pickerGarniture");
	}

	-(UIPickerView *) pickerSauce
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "get_pickerSauce");
	}

	-(void) setPickerSauce:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "set_pickerSauce");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface Top10ViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnCityTop;
	@property (nonatomic, assign) UIButton * btnCountryTop;
	@property (nonatomic, assign) UIButton * btnWorldTop;
	@property (nonatomic, assign) UIPickerView * pickerCity;
	@property (nonatomic, assign) UIPickerView * pickerCountry;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnCityTop;
	-(void) setBtnCityTop:(UIButton *)p0;
	-(UIButton *) btnCountryTop;
	-(void) setBtnCountryTop:(UIButton *)p0;
	-(UIButton *) btnWorldTop;
	-(void) setBtnWorldTop:(UIButton *)p0;
	-(UIPickerView *) pickerCity;
	-(void) setPickerCity:(UIPickerView *)p0;
	-(UIPickerView *) pickerCountry;
	-(void) setPickerCountry:(UIPickerView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Top10ViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnCityTop
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "get_btnCityTop");
	}

	-(void) setBtnCityTop:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "set_btnCityTop");
	}

	-(UIButton *) btnCountryTop
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "get_btnCountryTop");
	}

	-(void) setBtnCountryTop:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "set_btnCountryTop");
	}

	-(UIButton *) btnWorldTop
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "get_btnWorldTop");
	}

	-(void) setBtnWorldTop:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "set_btnWorldTop");
	}

	-(UIPickerView *) pickerCity
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "get_pickerCity");
	}

	-(void) setPickerCity:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "set_pickerCity");
	}

	-(UIPickerView *) pickerCountry
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "get_pickerCountry");
	}

	-(void) setPickerCountry:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "set_pickerCountry");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, "UIKit.UIStoryboardSegue, Xamarin.iOS", "Foundation.NSObject, Xamarin.iOS", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", "PrepareForSegue");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MainMenuViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnAbout;
	@property (nonatomic, assign) UIButton * btnGolden;
	@property (nonatomic, assign) UIButton * btnLocate;
	@property (nonatomic, assign) UIButton * btnRate;
	@property (nonatomic, assign) UIButton * btnTop10;
	@property (nonatomic, assign) UIImageView * imgBackground;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnAbout;
	-(void) setBtnAbout:(UIButton *)p0;
	-(UIButton *) btnGolden;
	-(void) setBtnGolden:(UIButton *)p0;
	-(UIButton *) btnLocate;
	-(void) setBtnLocate:(UIButton *)p0;
	-(UIButton *) btnRate;
	-(void) setBtnRate:(UIButton *)p0;
	-(UIButton *) btnTop10;
	-(void) setBtnTop10:(UIButton *)p0;
	-(UIImageView *) imgBackground;
	-(void) setImgBackground:(UIImageView *)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MainMenuViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnAbout
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_btnAbout");
	}

	-(void) setBtnAbout:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_btnAbout");
	}

	-(UIButton *) btnGolden
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_btnGolden");
	}

	-(void) setBtnGolden:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_btnGolden");
	}

	-(UIButton *) btnLocate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_btnLocate");
	}

	-(void) setBtnLocate:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_btnLocate");
	}

	-(UIButton *) btnRate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_btnRate");
	}

	-(void) setBtnRate:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_btnRate");
	}

	-(UIButton *) btnTop10
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_btnTop10");
	}

	-(void) setBtnTop10:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_btnTop10");
	}

	-(UIImageView *) imgBackground
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "get_imgBackground");
	}

	-(void) setImgBackground:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "set_imgBackground");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface _50ShadesOfBurgers_LocationAutoCompleteTableSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UIView *) tableView:(UITableView *)p0 viewForFooterInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation _50ShadesOfBurgers_LocationAutoCompleteTableSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.LocationAutoCompleteTableSource, 50ShadesOfBurgers", "RowsInSection");
	}

	-(UIView *) tableView:(UITableView *)p0 viewForFooterInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.LocationAutoCompleteTableSource, 50ShadesOfBurgers", "GetViewForFooter");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.LocationAutoCompleteTableSource, 50ShadesOfBurgers", "GetCell");
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.LocationAutoCompleteTableSource, 50ShadesOfBurgers", "RowSelected");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionFiveEightViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIImageView * bgrImage;
	@property (nonatomic, assign) UIButton * btnFeelGrade1;
	@property (nonatomic, assign) UIButton * btnFeelGrade2;
	@property (nonatomic, assign) UIButton * btnFeelGrade3;
	@property (nonatomic, assign) UIButton * btnFeelGrade4;
	@property (nonatomic, assign) UIButton * btnHearGrade1;
	@property (nonatomic, assign) UIButton * btnHearGrade2;
	@property (nonatomic, assign) UIButton * btnHearGrade3;
	@property (nonatomic, assign) UIButton * btnHearGrade4;
	@property (nonatomic, assign) UIButton * btnNext;
	@property (nonatomic, assign) UIButton * btnSeeGrade1;
	@property (nonatomic, assign) UIButton * btnSeeGrade2;
	@property (nonatomic, assign) UIButton * btnSeeGrade3;
	@property (nonatomic, assign) UIButton * btnSeeGrade4;
	@property (nonatomic, assign) UIButton * btnSmellGrade1;
	@property (nonatomic, assign) UIButton * btnSmellGrade2;
	@property (nonatomic, assign) UIButton * btnSmellGrade3;
	@property (nonatomic, assign) UIButton * btnSmellGrade4;
	@property (nonatomic, assign) UILabel * lblFeel;
	@property (nonatomic, assign) UILabel * lblHear;
	@property (nonatomic, assign) UILabel * lblOtherSenses;
	@property (nonatomic, assign) UILabel * lblSee;
	@property (nonatomic, assign) UILabel * lblSmell;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIImageView *) bgrImage;
	-(void) setBgrImage:(UIImageView *)p0;
	-(UIButton *) btnFeelGrade1;
	-(void) setBtnFeelGrade1:(UIButton *)p0;
	-(UIButton *) btnFeelGrade2;
	-(void) setBtnFeelGrade2:(UIButton *)p0;
	-(UIButton *) btnFeelGrade3;
	-(void) setBtnFeelGrade3:(UIButton *)p0;
	-(UIButton *) btnFeelGrade4;
	-(void) setBtnFeelGrade4:(UIButton *)p0;
	-(UIButton *) btnHearGrade1;
	-(void) setBtnHearGrade1:(UIButton *)p0;
	-(UIButton *) btnHearGrade2;
	-(void) setBtnHearGrade2:(UIButton *)p0;
	-(UIButton *) btnHearGrade3;
	-(void) setBtnHearGrade3:(UIButton *)p0;
	-(UIButton *) btnHearGrade4;
	-(void) setBtnHearGrade4:(UIButton *)p0;
	-(UIButton *) btnNext;
	-(void) setBtnNext:(UIButton *)p0;
	-(UIButton *) btnSeeGrade1;
	-(void) setBtnSeeGrade1:(UIButton *)p0;
	-(UIButton *) btnSeeGrade2;
	-(void) setBtnSeeGrade2:(UIButton *)p0;
	-(UIButton *) btnSeeGrade3;
	-(void) setBtnSeeGrade3:(UIButton *)p0;
	-(UIButton *) btnSeeGrade4;
	-(void) setBtnSeeGrade4:(UIButton *)p0;
	-(UIButton *) btnSmellGrade1;
	-(void) setBtnSmellGrade1:(UIButton *)p0;
	-(UIButton *) btnSmellGrade2;
	-(void) setBtnSmellGrade2:(UIButton *)p0;
	-(UIButton *) btnSmellGrade3;
	-(void) setBtnSmellGrade3:(UIButton *)p0;
	-(UIButton *) btnSmellGrade4;
	-(void) setBtnSmellGrade4:(UIButton *)p0;
	-(UILabel *) lblFeel;
	-(void) setLblFeel:(UILabel *)p0;
	-(UILabel *) lblHear;
	-(void) setLblHear:(UILabel *)p0;
	-(UILabel *) lblOtherSenses;
	-(void) setLblOtherSenses:(UILabel *)p0;
	-(UILabel *) lblSee;
	-(void) setLblSee:(UILabel *)p0;
	-(UILabel *) lblSmell;
	-(void) setLblSmell:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionFiveEightViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIImageView *) bgrImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_bgrImage");
	}

	-(void) setBgrImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_bgrImage");
	}

	-(UIButton *) btnFeelGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnFeelGrade1");
	}

	-(void) setBtnFeelGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnFeelGrade1");
	}

	-(UIButton *) btnFeelGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnFeelGrade2");
	}

	-(void) setBtnFeelGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnFeelGrade2");
	}

	-(UIButton *) btnFeelGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnFeelGrade3");
	}

	-(void) setBtnFeelGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnFeelGrade3");
	}

	-(UIButton *) btnFeelGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnFeelGrade4");
	}

	-(void) setBtnFeelGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnFeelGrade4");
	}

	-(UIButton *) btnHearGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnHearGrade1");
	}

	-(void) setBtnHearGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnHearGrade1");
	}

	-(UIButton *) btnHearGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnHearGrade2");
	}

	-(void) setBtnHearGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnHearGrade2");
	}

	-(UIButton *) btnHearGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnHearGrade3");
	}

	-(void) setBtnHearGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnHearGrade3");
	}

	-(UIButton *) btnHearGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnHearGrade4");
	}

	-(void) setBtnHearGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnHearGrade4");
	}

	-(UIButton *) btnNext
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnNext");
	}

	-(void) setBtnNext:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnNext");
	}

	-(UIButton *) btnSeeGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSeeGrade1");
	}

	-(void) setBtnSeeGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSeeGrade1");
	}

	-(UIButton *) btnSeeGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSeeGrade2");
	}

	-(void) setBtnSeeGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSeeGrade2");
	}

	-(UIButton *) btnSeeGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSeeGrade3");
	}

	-(void) setBtnSeeGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSeeGrade3");
	}

	-(UIButton *) btnSeeGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSeeGrade4");
	}

	-(void) setBtnSeeGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSeeGrade4");
	}

	-(UIButton *) btnSmellGrade1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSmellGrade1");
	}

	-(void) setBtnSmellGrade1:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSmellGrade1");
	}

	-(UIButton *) btnSmellGrade2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSmellGrade2");
	}

	-(void) setBtnSmellGrade2:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSmellGrade2");
	}

	-(UIButton *) btnSmellGrade3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSmellGrade3");
	}

	-(void) setBtnSmellGrade3:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSmellGrade3");
	}

	-(UIButton *) btnSmellGrade4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_btnSmellGrade4");
	}

	-(void) setBtnSmellGrade4:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_btnSmellGrade4");
	}

	-(UILabel *) lblFeel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_lblFeel");
	}

	-(void) setLblFeel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_lblFeel");
	}

	-(UILabel *) lblHear
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_lblHear");
	}

	-(void) setLblHear:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_lblHear");
	}

	-(UILabel *) lblOtherSenses
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_lblOtherSenses");
	}

	-(void) setLblOtherSenses:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_lblOtherSenses");
	}

	-(UILabel *) lblSee
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_lblSee");
	}

	-(void) setLblSee:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_lblSee");
	}

	-(UILabel *) lblSmell
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "get_lblSmell");
	}

	-(void) setLblSmell:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "set_lblSmell");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", "ViewDidAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface CommentsAndConfirmViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIImageView * bgrImage;
	@property (nonatomic, assign) UIButton * btnConfirm;
	@property (nonatomic, assign) UILabel * lblComment;
	@property (nonatomic, assign) UITextView * txtComment;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIImageView *) bgrImage;
	-(void) setBgrImage:(UIImageView *)p0;
	-(UIButton *) btnConfirm;
	-(void) setBtnConfirm:(UIButton *)p0;
	-(UILabel *) lblComment;
	-(void) setLblComment:(UILabel *)p0;
	-(UITextView *) txtComment;
	-(void) setTxtComment:(UITextView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation CommentsAndConfirmViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIImageView *) bgrImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "get_bgrImage");
	}

	-(void) setBgrImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "set_bgrImage");
	}

	-(UIButton *) btnConfirm
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "get_btnConfirm");
	}

	-(void) setBtnConfirm:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "set_btnConfirm");
	}

	-(UILabel *) lblComment
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "get_lblComment");
	}

	-(void) setLblComment:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "set_lblComment");
	}

	-(UITextView *) txtComment
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_24 (self, _cmd, &managed_method, "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "get_txtComment");
	}

	-(void) setTxtComment:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "set_txtComment");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface FirstLoginViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnConfirm;
	@property (nonatomic, assign) UIDatePicker * datePicker;
	@property (nonatomic, assign) UILabel * lblDate;
	@property (nonatomic, assign) UIPickerView * pickerGender;
	@property (nonatomic, assign) UITextField * txtEmail;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnConfirm;
	-(void) setBtnConfirm:(UIButton *)p0;
	-(UIDatePicker *) datePicker;
	-(void) setDatePicker:(UIDatePicker *)p0;
	-(UILabel *) lblDate;
	-(void) setLblDate:(UILabel *)p0;
	-(UIPickerView *) pickerGender;
	-(void) setPickerGender:(UIPickerView *)p0;
	-(UITextField *) txtEmail;
	-(void) setTxtEmail:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation FirstLoginViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnConfirm
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "get_btnConfirm");
	}

	-(void) setBtnConfirm:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "set_btnConfirm");
	}

	-(UIDatePicker *) datePicker
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_26 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "get_datePicker");
	}

	-(void) setDatePicker:(UIDatePicker *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, "UIKit.UIDatePicker, Xamarin.iOS", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "set_datePicker");
	}

	-(UILabel *) lblDate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "get_lblDate");
	}

	-(void) setLblDate:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "set_lblDate");
	}

	-(UIPickerView *) pickerGender
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "get_pickerGender");
	}

	-(void) setPickerGender:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "set_pickerGender");
	}

	-(UITextField *) txtEmail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "get_txtEmail");
	}

	-(void) setTxtEmail:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "set_txtEmail");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(void) application:(UIApplication *)p0 didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "get_Window");
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "UIKit.UIWindow, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "set_Window");
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "FinishedLaunching");
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "OnResignActivation");
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "DidEnterBackground");
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "WillEnterForeground");
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "OnActivated");
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "WillTerminate");
	}

	-(void) application:(UIApplication *)p0 didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSData, Xamarin.iOS", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", "RegisteredForRemoteNotifications");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_35 (self, _cmd, &managed_method, "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface QuestionnaireChoixRestoViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnStart;
	@property (nonatomic, assign) UIImageView * imgBgr;
	@property (nonatomic, assign) UILabel * lblAddBurger;
	@property (nonatomic, assign) UILabel * lblBurger;
	@property (nonatomic, assign) UILabel * lblChoose;
	@property (nonatomic, assign) UILabel * lblResto;
	@property (nonatomic, assign) UITableView * tableViewLocationAutoComplete;
	@property (nonatomic, assign) UITextField * txtBurger;
	@property (nonatomic, assign) UITextField * txtBurgerNew;
	@property (nonatomic, assign) UITextField * txtName;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnStart;
	-(void) setBtnStart:(UIButton *)p0;
	-(UIImageView *) imgBgr;
	-(void) setImgBgr:(UIImageView *)p0;
	-(UILabel *) lblAddBurger;
	-(void) setLblAddBurger:(UILabel *)p0;
	-(UILabel *) lblBurger;
	-(void) setLblBurger:(UILabel *)p0;
	-(UILabel *) lblChoose;
	-(void) setLblChoose:(UILabel *)p0;
	-(UILabel *) lblResto;
	-(void) setLblResto:(UILabel *)p0;
	-(UITableView *) tableViewLocationAutoComplete;
	-(void) setTableViewLocationAutoComplete:(UITableView *)p0;
	-(UITextField *) txtBurger;
	-(void) setTxtBurger:(UITextField *)p0;
	-(UITextField *) txtBurgerNew;
	-(void) setTxtBurgerNew:(UITextField *)p0;
	-(UITextField *) txtName;
	-(void) setTxtName:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionnaireChoixRestoViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnStart
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_btnStart");
	}

	-(void) setBtnStart:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_btnStart");
	}

	-(UIImageView *) imgBgr
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_imgBgr");
	}

	-(void) setImgBgr:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_imgBgr");
	}

	-(UILabel *) lblAddBurger
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_lblAddBurger");
	}

	-(void) setLblAddBurger:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_lblAddBurger");
	}

	-(UILabel *) lblBurger
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_lblBurger");
	}

	-(void) setLblBurger:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_lblBurger");
	}

	-(UILabel *) lblChoose
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_lblChoose");
	}

	-(void) setLblChoose:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_lblChoose");
	}

	-(UILabel *) lblResto
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_lblResto");
	}

	-(void) setLblResto:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_lblResto");
	}

	-(UITableView *) tableViewLocationAutoComplete
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_tableViewLocationAutoComplete");
	}

	-(void) setTableViewLocationAutoComplete:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_tableViewLocationAutoComplete");
	}

	-(UITextField *) txtBurger
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_txtBurger");
	}

	-(void) setTxtBurger:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_txtBurger");
	}

	-(UITextField *) txtBurgerNew
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_txtBurgerNew");
	}

	-(void) setTxtBurgerNew:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_txtBurgerNew");
	}

	-(UITextField *) txtName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "get_txtName");
	}

	-(void) setTxtName:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "set_txtName");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface QuestionSixSevenEightViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnConfirmer;
	@property (nonatomic, assign) UILabel * lblOuie;
	@property (nonatomic, assign) UILabel * lblRajoutezComment;
	@property (nonatomic, assign) UIPickerView * pickerOuie;
	@property (nonatomic, assign) UITextView * txtComment;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnConfirmer;
	-(void) setBtnConfirmer:(UIButton *)p0;
	-(UILabel *) lblOuie;
	-(void) setLblOuie:(UILabel *)p0;
	-(UILabel *) lblRajoutezComment;
	-(void) setLblRajoutezComment:(UILabel *)p0;
	-(UIPickerView *) pickerOuie;
	-(void) setPickerOuie:(UIPickerView *)p0;
	-(UITextView *) txtComment;
	-(void) setTxtComment:(UITextView *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation QuestionSixSevenEightViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnConfirmer
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "get_btnConfirmer");
	}

	-(void) setBtnConfirmer:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "set_btnConfirmer");
	}

	-(UILabel *) lblOuie
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "get_lblOuie");
	}

	-(void) setLblOuie:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "set_lblOuie");
	}

	-(UILabel *) lblRajoutezComment
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "get_lblRajoutezComment");
	}

	-(void) setLblRajoutezComment:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "set_lblRajoutezComment");
	}

	-(UIPickerView *) pickerOuie
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "get_pickerOuie");
	}

	-(void) setPickerOuie:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "set_pickerOuie");
	}

	-(UITextView *) txtComment
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_24 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "get_txtComment");
	}

	-(void) setTxtComment:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "set_txtComment");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface RestoDetailViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UILabel * lblRestoAdresse;
	@property (nonatomic, assign) UILabel * lblRestoName;
	@property (nonatomic, assign) UILabel * lblRestoTel;
	@property (nonatomic, assign) MKMapView * mapViewResto;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UILabel *) lblRestoAdresse;
	-(void) setLblRestoAdresse:(UILabel *)p0;
	-(UILabel *) lblRestoName;
	-(void) setLblRestoName:(UILabel *)p0;
	-(UILabel *) lblRestoTel;
	-(void) setLblRestoTel:(UILabel *)p0;
	-(MKMapView *) mapViewResto;
	-(void) setMapViewResto:(MKMapView *)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation RestoDetailViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UILabel *) lblRestoAdresse
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "get_lblRestoAdresse");
	}

	-(void) setLblRestoAdresse:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "set_lblRestoAdresse");
	}

	-(UILabel *) lblRestoName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "get_lblRestoName");
	}

	-(void) setLblRestoName:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "set_lblRestoName");
	}

	-(UILabel *) lblRestoTel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "get_lblRestoTel");
	}

	-(void) setLblRestoTel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "set_lblRestoTel");
	}

	-(MKMapView *) mapViewResto
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_38 (self, _cmd, &managed_method, "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "get_mapViewResto");
	}

	-(void) setMapViewResto:(MKMapView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, "MapKit.MKMapView, Xamarin.iOS", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "set_mapViewResto");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", "ViewDidAppear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface Top10TableViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UITableView * table;
	@property (nonatomic, assign) UINavigationItem * TableTitle;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITableView *) table;
	-(void) setTable:(UITableView *)p0;
	-(UINavigationItem *) TableTitle;
	-(void) setTableTitle:(UINavigationItem *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Top10TableViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UITableView *) table
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "get_table");
	}

	-(void) setTable:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "set_table");
	}

	-(UINavigationItem *) TableTitle
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_40 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "get_TableTitle");
	}

	-(void) setTableTitle:(UINavigationItem *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UINavigationItem, Xamarin.iOS", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "set_TableTitle");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "ViewWillAppear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "ViewDidAppear");
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, "UIKit.UIStoryboardSegue, Xamarin.iOS", "Foundation.NSObject, Xamarin.iOS", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", "PrepareForSegue");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface _50ShadesOfBurgers_AutoCompleteTextFieldManager_AutoCompleteTableViewSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation _50ShadesOfBurgers_AutoCompleteTextFieldManager_AutoCompleteTableViewSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "_50ShadesOfBurgers.AutoCompleteTextFieldManager+AutoCompleteTableViewSource, 50ShadesOfBurgers", "RowsInSection");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.AutoCompleteTextFieldManager+AutoCompleteTableViewSource, 50ShadesOfBurgers", "GetCell");
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "_50ShadesOfBurgers.AutoCompleteTextFieldManager+AutoCompleteTableViewSource, 50ShadesOfBurgers", "RowSelected");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UITextField__UITextFieldDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_43 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextField, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldChangeCharacters");
	}

	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldClear");
	}

	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldReturn");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_35 (self, _cmd, &managed_method, "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0;
	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0;
	-(void) scrollViewDidZoom:(UIScrollView *)p0;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0;
	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0;
	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2;
	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIScrollView__UIScrollViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_45 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "System.Boolean, mscorlib", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrolledToTop");
	}

	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_46 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ShouldScrollToTop");
	}

	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_47 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "CoreGraphics.CGPoint, Xamarin.iOS", "CoreGraphics.CGPoint&, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "System.nfloat, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_50 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingStarted");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface UIKit_UITextView__UITextViewDelegate : UIKit_UIScrollView__UIScrollViewDelegate<UITextViewDelegate, UIScrollViewDelegate> {
}
	-(void) textViewDidChange:(UITextView *)p0;
	-(void) textViewDidEndEditing:(UITextView *)p0;
	-(void) textViewDidBeginEditing:(UITextView *)p0;
	-(void) textViewDidChangeSelection:(UITextView *)p0;
	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(BOOL) textViewShouldEndEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2;
@end
@implementation UIKit_UITextView__UITextViewDelegate { } 

	-(void) textViewDidChange:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "Changed");
	}

	-(void) textViewDidEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textViewDidBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(void) textViewDidChangeSelection:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "SelectionChanged");
	}

	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_52 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldChangeText");
	}

	-(BOOL) textViewShouldEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_53 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "UIKit.NSTextAttachment, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldInteractWithTextAttachment");
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_54 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "Foundation.NSUrl, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldInteractWithUrl");
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParameterlessToken { } 
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParametrizedToken { } 
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_55 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_35 (self, _cmd, &managed_method, "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIBarButtonItem_Callback : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) InvokeAction:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIBarButtonItem_Callback { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) InvokeAction:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_56 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "UIKit.UIBarButtonItem+Callback, Xamarin.iOS", "Call");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_35 (self, _cmd, &managed_method, "UIKit.UIBarButtonItem+Callback, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "Foundation.NSObject, Xamarin.iOS", NULL },
		{"UIResponder", "UIKit.UIResponder, Xamarin.iOS", NULL },
		{"UIViewController", "UIKit.UIViewController, Xamarin.iOS", NULL },
		{"UIView", "UIKit.UIView, Xamarin.iOS", NULL },
		{"UITableViewCell", "UIKit.UITableViewCell, Xamarin.iOS", NULL },
		{"UITableViewController", "UIKit.UITableViewController, Xamarin.iOS", NULL },
		{"UIStoryboardSegue", "UIKit.UIStoryboardSegue, Xamarin.iOS", NULL },
		{"UIFocusUpdateContext", "UIKit.UIFocusUpdateContext, Xamarin.iOS", NULL },
		{"UIScrollView", "UIKit.UIScrollView, Xamarin.iOS", NULL },
		{"UITableView", "UIKit.UITableView, Xamarin.iOS", NULL },
		{"UIFont", "UIKit.UIFont, Xamarin.iOS", NULL },
		{"UITraitCollection", "UIKit.UITraitCollection, Xamarin.iOS", NULL },
		{"UIToolbar", "UIKit.UIToolbar, Xamarin.iOS", NULL },
		{"NSIndexPath", "Foundation.NSIndexPath, Xamarin.iOS", NULL },
		{"NSUserActivity", "Foundation.NSUserActivity, Xamarin.iOS", NULL },
		{"NSArray", "Foundation.NSArray, Xamarin.iOS", NULL },
		{"NSAttributedString", "Foundation.NSAttributedString, Xamarin.iOS", NULL },
		{"NSBundle", "Foundation.NSBundle, Xamarin.iOS", NULL },
		{"NSCoder", "Foundation.NSCoder, Xamarin.iOS", NULL },
		{"NSDate", "Foundation.NSDate, Xamarin.iOS", NULL },
		{"UIImage", "UIKit.UIImage, Xamarin.iOS", NULL },
		{"Foundation_InternalNSNotificationHandler", "Foundation.InternalNSNotificationHandler, Xamarin.iOS", NULL },
		{"NSValue", "Foundation.NSValue, Xamarin.iOS", NULL },
		{"NSNumber", "Foundation.NSNumber, Xamarin.iOS", NULL },
		{"NSRunLoop", "Foundation.NSRunLoop, Xamarin.iOS", NULL },
		{"NSString", "Foundation.NSString, Xamarin.iOS", NULL },
		{"UIImageView", "UIKit.UIImageView, Xamarin.iOS", NULL },
		{"NSUserDefaults", "Foundation.NSUserDefaults, Xamarin.iOS", NULL },
		{"NSUUID", "Foundation.NSUuid, Xamarin.iOS", NULL },
		{"NSURL", "Foundation.NSUrl, Xamarin.iOS", NULL },
		{"UILabel", "UIKit.UILabel, Xamarin.iOS", NULL },
		{"UILocalNotification", "UIKit.UILocalNotification, Xamarin.iOS", NULL },
		{"__MonoMac_NSActionDispatcher", "Foundation.NSActionDispatcher, Xamarin.iOS", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", NULL },
		{"NSAutoreleasePool", "Foundation.NSAutoreleasePool, Xamarin.iOS", NULL },
		{"NSError", "Foundation.NSError, Xamarin.iOS", NULL },
		{"CALayer", "CoreAnimation.CALayer, Xamarin.iOS", NULL },
		{"UINavigationItem", "UIKit.UINavigationItem, Xamarin.iOS", NULL },
		{"UIPickerView", "UIKit.UIPickerView, Xamarin.iOS", NULL },
		{"UIPress", "UIKit.UIPress, Xamarin.iOS", NULL },
		{"UIAlertView", "UIKit.UIAlertView, Xamarin.iOS", NULL },
		{"UIApplication", "UIKit.UIApplication, Xamarin.iOS", NULL },
		{"UIBarItem", "UIKit.UIBarItem, Xamarin.iOS", NULL },
		{"UIBezierPath", "UIKit.UIBezierPath, Xamarin.iOS", NULL },
		{"UIControl", "UIKit.UIControl, Xamarin.iOS", NULL },
		{"UIButton", "UIKit.UIButton, Xamarin.iOS", NULL },
		{"UIColor", "UIKit.UIColor, Xamarin.iOS", NULL },
		{"CKShareMetadata", "CloudKit.CKShareMetadata, Xamarin.iOS", NULL },
		{"UIKit_UIControlEventProxy", "UIKit.UIControlEventProxy, Xamarin.iOS", NULL },
		{"UIDevice", "UIKit.UIDevice, Xamarin.iOS", NULL },
		{"UIScreen", "UIKit.UIScreen, Xamarin.iOS", NULL },
		{"NSEnumerator", "Foundation.NSEnumerator, Xamarin.iOS", NULL },
		{"NSException", "Foundation.NSException, Xamarin.iOS", NULL },
		{"UIStoryboard", "UIKit.UIStoryboard, Xamarin.iOS", NULL },
		{"UITabBarItem", "UIKit.UITabBarItem, Xamarin.iOS", NULL },
		{"UITableViewFocusUpdateContext", "UIKit.UITableViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UITableViewRowAction", "UIKit.UITableViewRowAction, Xamarin.iOS", NULL },
		{"NSNotification", "Foundation.NSNotification, Xamarin.iOS", NULL },
		{"NSNull", "Foundation.NSNull, Xamarin.iOS", NULL },
		{"UITextPosition", "UIKit.UITextPosition, Xamarin.iOS", NULL },
		{"UITextRange", "UIKit.UITextRange, Xamarin.iOS", NULL },
		{"UITextSelectionRect", "UIKit.UITextSelectionRect, Xamarin.iOS", NULL },
		{"UITouch", "UIKit.UITouch, Xamarin.iOS", NULL },
		{"UIUserNotificationSettings", "UIKit.UIUserNotificationSettings, Xamarin.iOS", NULL },
		{"NSTextAttachment", "UIKit.NSTextAttachment, Xamarin.iOS", NULL },
		{"NSTextContainer", "UIKit.NSTextContainer, Xamarin.iOS", NULL },
		{"MKMapView", "MapKit.MKMapView, Xamarin.iOS", NULL },
		{"UIApplicationShortcutItem", "UIKit.UIApplicationShortcutItem, Xamarin.iOS", NULL },
		{"UIActivityIndicatorView", "UIKit.UIActivityIndicatorView, Xamarin.iOS", NULL },
		{"UIDatePicker", "UIKit.UIDatePicker, Xamarin.iOS", NULL },
		{"UIFocusAnimationCoordinator", "UIKit.UIFocusAnimationCoordinator, Xamarin.iOS", NULL },
		{"UIWindow", "UIKit.UIWindow, Xamarin.iOS", NULL },
		{"UITextField", "UIKit.UITextField, Xamarin.iOS", NULL },
		{"UITextView", "UIKit.UITextView, Xamarin.iOS", NULL },
		{"UIGestureRecognizer", "UIKit.UIGestureRecognizer, Xamarin.iOS", NULL },
		{"NSData", "Foundation.NSData, Xamarin.iOS", NULL },
		{"NSDictionary", "Foundation.NSDictionary, Xamarin.iOS", NULL },
		{"NSNotificationCenter", "Foundation.NSNotificationCenter, Xamarin.iOS", NULL },
		{"NSMutableDictionary", "Foundation.NSMutableDictionary, Xamarin.iOS", NULL },
		{"NSSet", "Foundation.NSSet, Xamarin.iOS", NULL },
		{"UIBarButtonItem", "UIKit.UIBarButtonItem, Xamarin.iOS", NULL },
		{"BurgersNearMeViewController", "_50ShadesOfBurgers.BurgersNearMeViewController, 50ShadesOfBurgers", NULL },
		{"GoldenBurgerViewController", "_50ShadesOfBurgers.GoldenBurgerViewController, 50ShadesOfBurgers", NULL },
		{"IntroViewController", "_50ShadesOfBurgers.IntroViewController, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_Model_CustomTop10Cell", "_50ShadesOfBurgers.Model.CustomTop10Cell, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_Model_ListPickerViewModel_1", "_50ShadesOfBurgers.Model.ListPickerViewModel`1, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_Model_LoadingOverlay", "_50ShadesOfBurgers.Model.LoadingOverlay, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_Model_QuestionPickerViewModel_1", "_50ShadesOfBurgers.Model.QuestionPickerViewModel`1, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_Model_Top10DataSource", "_50ShadesOfBurgers.Model.Top10DataSource, 50ShadesOfBurgers", NULL },
		{"NoInternetViewController", "_50ShadesOfBurgers.NoInternetViewController, 50ShadesOfBurgers", NULL },
		{"QuestionFourFiveViewController", "_50ShadesOfBurgers.QuestionFourFiveViewController, 50ShadesOfBurgers", NULL },
		{"QuestionnaireIntroViewController", "_50ShadesOfBurgers.QuestionnaireIntroViewController, 50ShadesOfBurgers", NULL },
		{"QuestionOneViewController", "_50ShadesOfBurgers.QuestionOneViewController, 50ShadesOfBurgers", NULL },
		{"QuestionSixSevenViewController", "_50ShadesOfBurgers.QuestionSixSevenViewController, 50ShadesOfBurgers", NULL },
		{"QuestionTwoThreeViewController", "_50ShadesOfBurgers.QuestionTwoThreeViewController, 50ShadesOfBurgers", NULL },
		{"Top10ViewController", "_50ShadesOfBurgers.Top10ViewController, 50ShadesOfBurgers", NULL },
		{"MainMenuViewController", "_50ShadesOfBurgers.MainMenuViewController, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_LocationAutoCompleteTableSource", "_50ShadesOfBurgers.LocationAutoCompleteTableSource, 50ShadesOfBurgers", NULL },
		{"QuestionFiveEightViewController", "_50ShadesOfBurgers.QuestionFiveEightViewController, 50ShadesOfBurgers", NULL },
		{"CommentsAndConfirmViewController", "_50ShadesOfBurgers.CommentsAndConfirmViewController, 50ShadesOfBurgers", NULL },
		{"FirstLoginViewController", "_50ShadesOfBurgers.FirstLoginViewController, 50ShadesOfBurgers", NULL },
		{"AppDelegate", "_50ShadesOfBurgers.AppDelegate, 50ShadesOfBurgers", NULL },
		{"QuestionnaireChoixRestoViewController", "_50ShadesOfBurgers.QuestionnaireChoixRestoViewController, 50ShadesOfBurgers", NULL },
		{"QuestionSixSevenEightViewController", "_50ShadesOfBurgers.QuestionSixSevenEightViewController, 50ShadesOfBurgers", NULL },
		{"RestoDetailViewController", "_50ShadesOfBurgers.RestoDetailViewController, 50ShadesOfBurgers", NULL },
		{"Top10TableViewController", "_50ShadesOfBurgers.Top10TableViewController, 50ShadesOfBurgers", NULL },
		{"_50ShadesOfBurgers_AutoCompleteTextFieldManager_AutoCompleteTableViewSource", "_50ShadesOfBurgers.AutoCompleteTextFieldManager+AutoCompleteTableViewSource, 50ShadesOfBurgers", NULL },
		{"UIKit_UITextField__UITextFieldDelegate", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", NULL },
		{"UIKit_UIScrollView__UIScrollViewDelegate", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", NULL },
		{"UIKit_UITextView__UITextViewDelegate", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerToken", "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParameterlessToken", "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParametrizedToken", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", NULL },
		{"__NSObject_Disposer", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", NULL },
		{"UIKit_UIBarButtonItem_Callback", "UIKit.UIBarButtonItem+Callback, Xamarin.iOS", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"50ShadesOfBurgers", 
		"Xamarin.iOS", 
		"mscorlib", 
		"System", 
		"System.Xml", 
		"System.Core", 
		"Mono.Dynamic.Interpreter", 
		"Newtonsoft.Json", 
		"System.Xml.Linq", 
		"System.Runtime.Serialization", 
		"Microsoft.CSharp", 
		"Mono.CSharp"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		12,
		115,
		34
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UIView");
	__xamarin_class_map [4].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [5].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [6].handle = objc_getClass ("UIStoryboardSegue");
	__xamarin_class_map [7].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [8].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [9].handle = objc_getClass ("UITableView");
	__xamarin_class_map [10].handle = objc_getClass ("UIFont");
	__xamarin_class_map [11].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [12].handle = objc_getClass ("UIToolbar");
	__xamarin_class_map [13].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [14].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [15].handle = objc_getClass ("NSArray");
	__xamarin_class_map [16].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [17].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [18].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [19].handle = objc_getClass ("NSDate");
	__xamarin_class_map [20].handle = objc_getClass ("UIImage");
	__xamarin_class_map [21].handle = objc_getClass ("Foundation_InternalNSNotificationHandler");
	__xamarin_class_map [22].handle = objc_getClass ("NSValue");
	__xamarin_class_map [23].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [24].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [25].handle = objc_getClass ("NSString");
	__xamarin_class_map [26].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [27].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [28].handle = objc_getClass ("NSUUID");
	__xamarin_class_map [29].handle = objc_getClass ("NSURL");
	__xamarin_class_map [30].handle = objc_getClass ("UILabel");
	__xamarin_class_map [31].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [32].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [33].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [34].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [35].handle = objc_getClass ("NSError");
	__xamarin_class_map [36].handle = objc_getClass ("CALayer");
	__xamarin_class_map [37].handle = objc_getClass ("UINavigationItem");
	__xamarin_class_map [38].handle = objc_getClass ("UIPickerView");
	__xamarin_class_map [39].handle = objc_getClass ("UIPress");
	__xamarin_class_map [40].handle = objc_getClass ("UIAlertView");
	__xamarin_class_map [41].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [42].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [43].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [44].handle = objc_getClass ("UIControl");
	__xamarin_class_map [45].handle = objc_getClass ("UIButton");
	__xamarin_class_map [46].handle = objc_getClass ("UIColor");
	__xamarin_class_map [47].handle = objc_getClass ("CKShareMetadata");
	__xamarin_class_map [48].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [49].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [50].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [51].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [52].handle = objc_getClass ("NSException");
	__xamarin_class_map [53].handle = objc_getClass ("UIStoryboard");
	__xamarin_class_map [54].handle = objc_getClass ("UITabBarItem");
	__xamarin_class_map [55].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [56].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [57].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [58].handle = objc_getClass ("NSNull");
	__xamarin_class_map [59].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [60].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [61].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [62].handle = objc_getClass ("UITouch");
	__xamarin_class_map [63].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [64].handle = objc_getClass ("NSTextAttachment");
	__xamarin_class_map [65].handle = objc_getClass ("NSTextContainer");
	__xamarin_class_map [66].handle = objc_getClass ("MKMapView");
	__xamarin_class_map [67].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [68].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [69].handle = objc_getClass ("UIDatePicker");
	__xamarin_class_map [70].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [71].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [72].handle = objc_getClass ("UITextField");
	__xamarin_class_map [73].handle = objc_getClass ("UITextView");
	__xamarin_class_map [74].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [75].handle = objc_getClass ("NSData");
	__xamarin_class_map [76].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [77].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [78].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [79].handle = objc_getClass ("NSSet");
	__xamarin_class_map [80].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [81].handle = [BurgersNearMeViewController class];
	__xamarin_class_map [82].handle = [GoldenBurgerViewController class];
	__xamarin_class_map [83].handle = [IntroViewController class];
	__xamarin_class_map [84].handle = [_50ShadesOfBurgers_Model_CustomTop10Cell class];
	__xamarin_class_map [85].handle = [_50ShadesOfBurgers_Model_ListPickerViewModel_1 class];
	__xamarin_class_map [86].handle = [_50ShadesOfBurgers_Model_LoadingOverlay class];
	__xamarin_class_map [87].handle = [_50ShadesOfBurgers_Model_QuestionPickerViewModel_1 class];
	__xamarin_class_map [88].handle = [_50ShadesOfBurgers_Model_Top10DataSource class];
	__xamarin_class_map [89].handle = [NoInternetViewController class];
	__xamarin_class_map [90].handle = [QuestionFourFiveViewController class];
	__xamarin_class_map [91].handle = [QuestionnaireIntroViewController class];
	__xamarin_class_map [92].handle = [QuestionOneViewController class];
	__xamarin_class_map [93].handle = [QuestionSixSevenViewController class];
	__xamarin_class_map [94].handle = [QuestionTwoThreeViewController class];
	__xamarin_class_map [95].handle = [Top10ViewController class];
	__xamarin_class_map [96].handle = [MainMenuViewController class];
	__xamarin_class_map [97].handle = [_50ShadesOfBurgers_LocationAutoCompleteTableSource class];
	__xamarin_class_map [98].handle = [QuestionFiveEightViewController class];
	__xamarin_class_map [99].handle = [CommentsAndConfirmViewController class];
	__xamarin_class_map [100].handle = [FirstLoginViewController class];
	__xamarin_class_map [101].handle = [AppDelegate class];
	__xamarin_class_map [102].handle = [QuestionnaireChoixRestoViewController class];
	__xamarin_class_map [103].handle = [QuestionSixSevenEightViewController class];
	__xamarin_class_map [104].handle = [RestoDetailViewController class];
	__xamarin_class_map [105].handle = [Top10TableViewController class];
	__xamarin_class_map [106].handle = [_50ShadesOfBurgers_AutoCompleteTextFieldManager_AutoCompleteTableViewSource class];
	__xamarin_class_map [107].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [108].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	__xamarin_class_map [109].handle = objc_getClass ("UIKit_UITextView__UITextViewDelegate");
	__xamarin_class_map [110].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [111].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [112].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [113].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [114].handle = objc_getClass ("UIKit_UIBarButtonItem_Callback");
	xamarin_add_registration_map (&__xamarin_registration_map);
}


