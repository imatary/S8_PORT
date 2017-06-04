.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$ClearDMRIP;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$DeleteFile;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$DeregisterDevice;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$FileTransferSessionInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetASP10FileBrowserErrorCode;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetAudioUriInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetAuthInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetCloudStorageAccountInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetDatabaseIntegrityValue;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetDeviceInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetImageUriInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetInitialSyncDoneDevices;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetSamsungAccountSignInIntent;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetScsCoreConfig;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetSetting;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetSignInStatus;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetUIAppAvailabilityInSamsungAppStore;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetVersatileInformation;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$GetVideoUriInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$Is3boxSupported;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$IsAutoUploadInProgress;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$IsFileTransferInProgress;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$IsInitialized;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$IsUpgradeAvailable;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$MRRControl;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$NetworkLockRequested;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$RequestNetworkRefresh;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SendUsageStat;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SendWakeupPushInBackground;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SetAllowedDMRIP;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SetDeviceInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SetSetting;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SetSyncMediaTypePriority;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SignIn;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$SignOutOfStorageService;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$TurnOnDevice;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$UpdateAudioPlayedTimestamp;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$UpdateMediaBookmark;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$UpdateUserDeviceName;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods$UpdateVideoPlayedTimestamp;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_RESULT:Ljava/lang/String; = "method_result"

.field public static final KEY_RESULT_STR:Ljava/lang/String; = "method_result_str"

.field public static final PATH:Ljava/lang/String; = "call_method"

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "call_method"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
