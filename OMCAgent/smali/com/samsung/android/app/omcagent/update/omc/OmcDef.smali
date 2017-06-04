.class public Lcom/samsung/android/app/omcagent/update/omc/OmcDef;
.super Ljava/lang/Object;
.source "OmcDef.java"


# static fields
.field public static final DEVICE_LOG_PATH:Ljava/lang/String; = "/data/log"

.field public static final DIR_CACHE:Ljava/lang/String; = "cache"

.field public static final DIR_CARRIER:Ljava/lang/String; = "carrier"

.field public static final DIR_ETC:Ljava/lang/String; = "etc"

.field public static final DIR_OMC:Ljava/lang/String; = "omc"

.field public static final DIR_OMR:Ljava/lang/String; = "omr"

.field public static final DIR_RES:Ljava/lang/String; = "res"

.field public static final DIR_SINGLE:Ljava/lang/String; = "single"

.field public static final DIR_SYSTEM:Ljava/lang/String; = "system"

.field public static final DIR_TEMP:Ljava/lang/String; = "temp"

.field public static final LOG_CHECK_OMC:I = 0x0

.field public static final LOG_COMPOSING:I = 0x1

.field public static final LOG_FILE_CHECK_OMC:Ljava/lang/String; = "omc_check.txt"

.field public static final LOG_FILE_COMPOSING:Ljava/lang/String; = "omc_composing.txt"

.field public static final LOG_REPORT:I = 0x2

.field public static final NOT_SUPPORTED_SIM:Ljava/lang/String; = "ril.nomatch"

.field public static final OMC_APPS_FILE:Ljava/lang/String; = "apps.xml"

.field public static final OMC_APPS_WORKSPACE_FILE:Ljava/lang/String; = "default_workspace.xml"

.field public static final OMC_APP_ORDER_FILE:Ljava/lang/String; = "default_application_order.xml"

.field public static final OMC_CACHE_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

.field public static final OMC_CLIENT_VERSION:Ljava/lang/String; = "4"

.field public static final OMC_CP_FILE:Ljava/lang/String; = "cp.xml"

.field public static final OMC_CSC_FEATURE_FILE:Ljava/lang/String; = "cscfeature.xml"

.field public static final OMC_CSC_FEATURE_NETWORK:Ljava/lang/String; = "cscfeature_network.xml"

.field public static final OMC_CUSTOMER_FILE:Ljava/lang/String; = "customer.xml"

.field public static final OMC_DISABLER_PATH:Ljava/lang/String; = "/system/omc/omc_disabler"

.field public static final OMC_ENABLER_PATH:Ljava/lang/String; = "/efs/sec_efs/omc_enabler"

.field public static final OMC_ETC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_FILE_NOT_EXIST:I = -0x2

.field public static final OMC_FILE_OK:I = 0x0

.field public static final OMC_FILE_PERMISSION_DENIED:I = -0x1

.field public static final OMC_INFO_FILE:Ljava/lang/String; = "omc.info"

.field public static final OMC_INSTALL_INSTALLED:Ljava/lang/String; = "2"

.field public static final OMC_INSTALL_NEEDTOINSTALL:Ljava/lang/String; = "1"

.field public static final OMC_INSTALL_NORMAL:Ljava/lang/String; = "0"

.field public static final OMC_KEYSTRING_FILE:Ljava/lang/String;

.field public static final OMC_LANG_FILE:Ljava/lang/String; = "language.xml"

.field public static final OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_OTHERS_FILE:Ljava/lang/String; = "others.xml"

.field public static final OMC_RESOURCES_FILE:Ljava/lang/String; = "resources.xml"

.field public static final OMC_RESOURCE_AUDIO:Ljava/lang/String; = "res/media/audio"

.field public static final OMC_RESOURCE_DIRECTORY_PATH_SALESCODE:Ljava/lang/String;

.field public static final OMC_RESOURCE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field public static final OMC_RESOURCE_MEDIA:Ljava/lang/String; = "res/media"

.field public static final OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH_MEDIA:Ljava/lang/String;

.field public static final OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"

.field public static final OMC_RESOURCE_TARGET_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_RESOURCE_TARGET_DIRECTORY_PATH_MEDIA:Ljava/lang/String;

.field public static final OMC_RESOURCE_VIDEO:Ljava/lang/String; = "res/media/video"

.field public static final OMC_RESOURCE_WALLPAPER:Ljava/lang/String; = "res/wallpaper"

.field public static final OMC_SOURCE_PACKAGE_DIRECTORY_PATH:Ljava/lang/String; = "data/data/com.samsung.android.app.omcagent/files"

.field public static final OMC_SOURCE_PACKAGE_FILE_NAME:Ljava/lang/String; = "omc.zip"

.field public static final OMC_SYSTEM_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_SYSTEM_DIRECTORY_PATH_OMC:Ljava/lang/String;

.field public static final OMC_SYSTEM_SINGLE_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

.field public static final OMC_SYSTEM_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

.field public static final OMC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_TEMP_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

.field public static final OMC_UPDATER_NAME:Ljava/lang/String; = "update.zip"

.field public static final OMC_UPDATE_COUNTDOWN_FORCE_INSTALL:I = 0xa

.field public static final OMC_UPDATE_RESULT_FILE:Ljava/lang/String; = "omc.status"

.field public static final OMC_UPDATE_RESULT_PATH:Ljava/lang/String; = "/data/misc/radio/omc/"

.field public static final PERSIST_SYS_INSTALL:Ljava/lang/String; = "persist.sys.omc_install"

.field public static final SEC_FILE_NAME:Ljava/lang/String; = "sec.zip"

.field public static final SKIP_PACKAGES_FILE:Ljava/lang/String; = "enforceskippingpackages.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_SYSTEM_SINGLE_TARGET_DIRECTORY_PATH_OMC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_ETC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_keystring.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_KEYSTRING_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_DIRECTORY_PATH_SALESCODE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_DIRECTORY_PATH_SALESCODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen/drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_TARGET_DIRECTORY_PATH_MEDIA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH_MEDIA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
