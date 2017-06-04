.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;
.super Ljava/lang/Object;
.source "CreatePublicFolderTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$MuploadType;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$PushType;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDirName:Ljava/lang/String;

.field private mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field private mGroupID:Ljava/lang/String;

.field private mLockKey:Ljava/lang/String;

.field private mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$PushType;

.field private mShareToken:Ljava/lang/String;

.field private mUserData:Landroid/os/Bundle;

.field private muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$MuploadType;

.field private notifyRecipients:Z

.field private requestToken:J

.field private useTransaction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->notifyRecipients:Z

    const-string/jumbo v0, "remoteshare"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mAppName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->useTransaction:Z

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mLockKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mContents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mDirName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->notifyRecipients:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mShareToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$PushType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$PushType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$PushType;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$MuploadType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$MuploadType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$MuploadType;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mUserData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mGroupID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->requestToken:J

    return-wide p1
.end method


# virtual methods
.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGCMType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->mGroupID:Ljava/lang/String;

    return-object v0
.end method
