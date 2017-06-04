.class public final Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;
.super Ljava/lang/Object;
.source "SlinkFileTransferUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferOptions"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowCloudStorageTargetDevice:Z

.field public autoUpload:Z

.field public deleteSourceFilesWhenTransferIsComplete:Z

.field public hideTransferStatusWhenSkipped:Z

.field public homesyncPersonalTransfer:Z

.field public homesyncSecureTransfer:Z

.field public transient isUiAppTheme:Z

.field public skipIfDuplicate:Z

.field public targetDirectory:Ljava/io/File;

.field public temporary:Z

.field public transferImmediately:Z

.field public transferVideoPairedFilesOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->skipIfDuplicate:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->skipIfDuplicate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->deleteSourceFilesWhenTransferIsComplete:Z

    aget-boolean v2, v0, v3

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->skipIfDuplicate:Z

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->temporary:Z

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->homesyncSecureTransfer:Z

    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->homesyncPersonalTransfer:Z

    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->autoUpload:Z

    const/4 v2, 0x6

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->hideTransferStatusWhenSkipped:Z

    const/4 v2, 0x7

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->allowCloudStorageTargetDevice:Z

    array-length v2, v0

    if-lt v2, v4, :cond_0

    const/16 v2, 0x8

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->transferVideoPairedFilesOnly:Z

    :cond_0
    array-length v2, v0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    aget-boolean v2, v0, v4

    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->transferImmediately:Z

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->targetDirectory:Ljava/io/File;

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->deleteSourceFilesWhenTransferIsComplete:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->skipIfDuplicate:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->temporary:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->homesyncSecureTransfer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->homesyncPersonalTransfer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->autoUpload:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->hideTransferStatusWhenSkipped:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->allowCloudStorageTargetDevice:Z

    aput-boolean v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->transferVideoPairedFilesOnly:Z

    aput-boolean v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->transferImmediately:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->targetDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;->targetDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
