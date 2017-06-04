.class public final Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
.super Ljava/lang/Object;
.source "SlinkMediaSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXTRA_IDS:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.ids"

.field private static final EXTRA_ID_COLUMN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.idColumnName"

.field private static final EXTRA_ID_COLUMN_TYPE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.idColumnType"

.field private static final EXTRA_INCLUDE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.include"

.field private static final EXTRA_LOCAL_FILE_PATHS:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.localFilePaths"

.field private static final EXTRA_SELECTION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.selection"

.field private static final EXTRA_SELECTION_ARGS:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.selectionArgs"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.sortOrder"

.field private static final EXTRA_URI:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.MediaSet.uri"


# instance fields
.field private clientAppId:I

.field private idColumnName:Ljava/lang/String;

.field private idColumnType:I

.field private ids:[Ljava/lang/String;

.field private include:Z

.field private localFilePaths:[Ljava/lang/String;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_id"

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static convertToStringArray([J)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_1

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    :cond_0
    return-object v1

    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createExcludeSet(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    const-string/jumbo v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->convertToStringArray([J)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    return-object v0
.end method

.method public static createFromFileBrowserIds(JLjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$FileList;->getDefaultFileListUri(J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    :goto_0
    const-string/jumbo v1, "document_id"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    iput-boolean p4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    if-eqz p3, :cond_1

    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    :goto_1
    iput-object p5, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->sortOrder:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$FileList;->getFileListUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    goto :goto_1
.end method

.method public static createFromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "mediaSet"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.extraMediaSet"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.uri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.uri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.idColumnName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.idColumnType"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.selection"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.selectionArgs"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.ids"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.include"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.sortOrder"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->sortOrder:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.MediaSet.localFilePaths"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->localFilePaths:[Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.APPLICATION_ID"

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static createFromLocalFilePaths([Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildFileUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->localFilePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static createFromMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Files;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    const-string/jumbo v1, "transport_type=?"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->LOCAL:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceTransportType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->convertToStringArray([J)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    iput-boolean v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    const-string/jumbo v1, "local_source_media_id"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Files;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->convertToStringArray([J)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdColumnType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    return v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFilePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->localFilePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSlinkPlatformClientAppId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    return v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isInclude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    return v0
.end method

.method public isLocalFilePathsMediaSet()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSlinkUri()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.provider.SLinkMedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSlinkPlatformClientAppId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "SlinkMediaSet:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "selectionArgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sortOrder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->sortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "include:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "idColumnName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "idColumnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "localFilePaths:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->localFilePaths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ClientAppId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->clientAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToIntent(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.uri"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.idColumnName"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.idColumnType"

    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.selection"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.selectionArgs"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.ids"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.include"

    iget-boolean v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.sortOrder"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->sortOrder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.MediaSet.localFilePaths"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->localFilePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selection:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->ids:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->idColumnName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->include:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
