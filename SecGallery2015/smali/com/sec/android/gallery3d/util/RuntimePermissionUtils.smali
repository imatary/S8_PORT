.class public Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;
.super Ljava/lang/Object;
.source "RuntimePermissionUtils.java"


# static fields
.field public static final CAMERA_PERMISSION_GROUP:[Ljava/lang/String;

.field public static final CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

.field public static final KEY_PICK_MODE:Ljava/lang/String; = "isPickMode"

.field public static final KEY_PREVIOUS_GALLERY_INTENT:Ljava/lang/String; = "previous_intent"

.field public static final KEY_REQUESTED_PERMISSION_LIST:Ljava/lang/String; = "permission_list"

.field public static final LOCATION_PERMISSION_GROUP:[Ljava/lang/String;

.field public static final MEMO_PERMISSION_GROUP:[Ljava/lang/String;

.field public static final REQUEST_CAMERA_PERMISSION:I = 0x65

.field public static final REQUEST_CONTACT_PERMISSION:I = 0x6b

.field public static final REQUEST_LOCATION_PERMISSION:I = 0x66

.field public static final REQUEST_PERMISSION_CODE_ON_CROP:I = 0x77

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_CATEGORIES:I = 0x73

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_CATEGORIES_SPINNER:I = 0x6c

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_EVENT:I = 0x6e

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_EVENT_NOTIFICATION:I = 0x69

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_EVENT_PHOTOVIEW:I = 0x6f

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_EVENT_SPINNER:I = 0x68

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_LOCAL_COMMENT_VIEW:I = 0x76

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_SEARCH:I = 0x6d

.field public static final REQUEST_PERMISSION_CODE_ON_ENTERING_SEARCH_FACE_TAG:I = 0x75

.field public static final REQUEST_PERMISSION_CODE_ON_EVENT_SHARE:I = 0x74

.field public static final REQUEST_PERMISSION_CODE_ON_LAUNCH:I = 0x6a

.field public static final REQUEST_PERMISSION_CODE_ON_REGISTER_ON_EVENTSETTING:I = 0x72

.field public static final REQUEST_PERMISSION_CODE_ON_SERVICE_ON:I = 0x70

.field public static final REQUEST_PERMISSION_CODE_ON_SERVICE_ON_EVENTSETTING:I = 0x71

.field public static final REQUIRED_PERMISSION_ON_BACKUP_RESTORE_WIDGET:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_CROP:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_ENTERING_LOCAL_COMMENT_VIEW:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_ENTERING_PEOPLE_CATEGORY:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_ENTERING_SEARCH_FACE_TAG:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_LAUNCH:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_LAUNCH_FROM_MESSAGING:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER:[Ljava/lang/String;

.field public static final REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER_FROM_MESSAGING:[Ljava/lang/String;

.field public static final SMS_PERMISSION_GROUP:[Ljava/lang/String;

.field public static final STORAGE_PERMISSION_GROUP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_FROM_MESSAGING:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER_FROM_MESSAGING:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_CROP:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_EVENT_SHARE_PUSH:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->STORAGE_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->LOCATION_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CAMERA_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->SMS_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_BACKUP_RESTORE_WIDGET:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.memo.READ"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->MEMO_PERMISSION_GROUP:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_PEOPLE_CATEGORY:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_SEARCH_FACE_TAG:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_LOCAL_COMMENT_VIEW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    if-nez v1, :cond_2

    const-string/jumbo v6, "RuntimePermissionUtils"

    const-string/jumbo v7, "permission is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    array-length v6, p1

    if-ge v0, v6, :cond_2

    const-string/jumbo v6, "RuntimePermissionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "permission["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
