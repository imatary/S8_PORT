.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;
.super Ljava/lang/Object;
.source "DCNlgCopyMoveRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewStateRuleNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlbumName:Ljava/lang/String;

.field private final mIsAlbumExist:I

.field private final mIsCopy:I

.field private final mIsCreateAlbum:I

.field private final mIsFromBixby:I

.field private final mIsSuccess:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_104"

    const-string/jumbo v2, "SearchViewResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_105"

    const-string/jumbo v2, "SearchViewResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_106"

    const-string/jumbo v2, "SearchViewResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_107"

    const-string/jumbo v2, "SearchViewResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_302"

    const-string/jumbo v2, "PicturesView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_303"

    const-string/jumbo v2, "PicturesView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_304"

    const-string/jumbo v2, "PicturesView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_305"

    const-string/jumbo v2, "PicturesView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_403"

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_404"

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_405"

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Gallery_406"

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCreateAlbum:I

    iput p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsFromBixby:I

    iput p3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCopy:I

    iput p4, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    iput p5, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsAlbumExist:I

    iput-object p6, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCreateAlbum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsFromBixby:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCopy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsAlbumExist:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method private static getTopState(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sViewStateRuleNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v3, :cond_2

    const-string/jumbo v1, "SearchViewResult"

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v3, :cond_3

    const-string/jumbo v1, "AlbumThumbnailView"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "PicturesView"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendNlgRequest(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCreateAlbum:I

    if-ne v3, v4, :cond_3

    const-string/jumbo v1, "CreateAlbum"

    :goto_0
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsFromBixby:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCreateAlbum:I

    if-ne v3, v4, :cond_6

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsAlbumExist:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_1
    iget v7, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    if-ne v7, v4, :cond_0

    move v5, v4

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    :cond_1
    invoke-direct {v2, v3, v5, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCreateAlbumState;-><init>(ZZLjava/lang/String;)V

    :goto_2
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    if-ne v3, v4, :cond_a

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->getTopState(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p1, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCopy:I

    if-ne v3, v4, :cond_4

    const-string/jumbo v1, "Copy"

    :goto_4
    goto :goto_0

    :cond_4
    const-string/jumbo v1, "Move"

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuCopyMoveToAlbum;

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsAlbumExist:I

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_5
    iget v7, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    if-ne v7, v4, :cond_7

    move v5, v4

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    :cond_8
    invoke-direct {v2, v3, v5, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuCopyMoveToAlbum;-><init>(ZZLjava/lang/String;)V

    goto :goto_2

    :cond_9
    move v3, v5

    goto :goto_5

    :cond_a
    const-string/jumbo v3, "CreateAlbum"

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCreateAlbum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsFromBixby:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsCopy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsSuccess:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mIsAlbumExist:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
