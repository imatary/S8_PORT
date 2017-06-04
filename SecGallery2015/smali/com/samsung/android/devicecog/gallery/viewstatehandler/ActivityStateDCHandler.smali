.class public abstract Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;
.source "ActivityStateDCHandler.java"


# static fields
.field private static final NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;

    const-string/jumbo v1, "PictureSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;

    const-string/jumbo v1, "PicturesSelectMultipleItems"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;

    const-string/jumbo v1, "PicturesSelectSingleItem"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturesView"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerSingle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerMulti"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumListPicker"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "MtpView"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/Observer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method

.method private checkExistSelectOrderType(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "oldest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "most latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "most oldest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLaunchDCState(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v2, "Gallery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "PicturesView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "PicturePickerSingle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "PicturePickerMulti"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "AlbumsListView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "AlbumListPicker"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "StoryListView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "RecycleBin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "CloudView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ebf57a8 -> :sswitch_6
        -0x6582fe6c -> :sswitch_7
        -0x272cb585 -> :sswitch_5
        -0x23ff5c66 -> :sswitch_1
        -0x16cec379 -> :sswitch_4
        0x10e1a18d -> :sswitch_3
        0x14e74274 -> :sswitch_2
        0x57850f32 -> :sswitch_0
        0x5e0c8a5a -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkValidSelectCount(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private checkValidSelectCountForDetailView(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method private getNlgRequestInfoForContentTypeNotMatched()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0514

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->CONTENT_TYPE_MATCH_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    if-ne p3, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForContentTypeNotMatched()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->getNlgId(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private getNlgRequestInfoForNoItem(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->getNlgId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getScreenParamSelectAllAndOrderAndCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v1, "SearchSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "PictureSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "PicturesSelectMultipleItems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "PicturesSelectSingleItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "StoryDetailSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "AlbumThumbnailsSelectMultipleItems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "AlbumThumbnailsSelectSingleItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "StoryListSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "AlbumListSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "AlbumListSelectedViewForHideAlbum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "AlbumListSelectedViewForShowHiddenAlbum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, "SelectType"

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v0, "SelectedStory"

    goto/16 :goto_1

    :pswitch_2
    const-string/jumbo v0, "SelectedAlbumName"

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x522c3822 -> :sswitch_1
        -0x5022504a -> :sswitch_5
        -0x2d23c7f3 -> :sswitch_9
        -0x216c196d -> :sswitch_8
        -0x1dc920a2 -> :sswitch_6
        -0x167bea38 -> :sswitch_0
        0x5117086 -> :sswitch_4
        0x33217e5f -> :sswitch_2
        0x3c060e6d -> :sswitch_7
        0x3e42b70c -> :sswitch_3
        0x4979b28c -> :sswitch_b
        0x4a0a7031 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleSelectAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->getMediaTypeFromContentType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->isPickMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isContainOnlyOneContent()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllCount()I

    move-result v1

    :cond_1
    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private isShareMenuEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const v2, 0x7f1202c2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v2

    goto :goto_0

    :cond_2
    const v2, 0x7f120290

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method private processSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtendRuleTimeOut(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->handleSelectAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkValidSelectCount(Ljava/lang/String;)I

    move-result v0

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-nez p5, :cond_2

    const/4 p5, 0x1

    :cond_2
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-nez p5, :cond_5

    sget-object v4, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->NOT_SUPPORT_DEFAULT_SELECT_ALL:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->isContainOnlyOneContent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0517

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->handleSelectAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private showShareDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    invoke-direct {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;-><init>()V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->setAnaphoraForShare(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->setDefaultPackageForShare(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCShareParam(Lcom/samsung/android/devicecog/gallery/DCShareParameter;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkMenuOptionEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    return v0
.end method

.method checkValidOrdinalParam(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 0

    return-void
.end method

.method enterSelectedView(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    return-void
.end method

.method public executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionParam(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method getNewStoryName(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "storyName"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getNextExpectedState(Ljava/util/List;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNlgRequestInfoForLaunch(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCLaunchViewNlgIdMap;->getNlgId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method getNlgRequestInfoForSelectedView(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForContentTypeNotMatched()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method getSelectCount(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    return-object v0
.end method

.method getSelectOrderType(ILjava/lang/String;)I
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return p1

    :sswitch_0
    const-string/jumbo v1, "latest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "oldest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "most latest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "most oldest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x42277079 -> :sswitch_0
        -0x3c752a01 -> :sswitch_1
        0x589e52c4 -> :sswitch_2
        0x5e50993c -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getSelectedStateArray()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method handleCreateStoryPopUp(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "storyName"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a07b2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method handleNotificaion(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "newContent"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCStateParameter$Notification;->getValidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "notification"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NOTIFICATION:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x237a88eb
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "albumName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "storyName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHOW_RENAME_POPUP:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecureFolder()V
    .locals 6

    const v3, 0x7f120278

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SECURE_FOLDER:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->FAILURE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "MoveToSecureFolder"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->NO_INSTALL:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;)I

    move-result v0

    goto :goto_1
.end method

.method handleSelectedView(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "selectAll"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "selectCount"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "selectOrderType"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "contentType"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "ordinal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->processSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method handleShare(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "packages"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "anaphora"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "this"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->showShareDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method handleShareChooserPopup(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "image"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "shareChooserPopUp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCStateParameter$ShareChooserPopUp;->getValidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->isShareMenuEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    invoke-direct {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;-><init>()V

    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->setChoiceTypeForShare(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCShareParam(Lcom/samsung/android/devicecog/gallery/DCShareParameter;)V

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "ShareChooserPopUp"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_1
    return-void

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "ShareChooserPopUp"

    const-string/jumbo v7, "Support"

    const-string/jumbo v8, "no"

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "ShareChooserPopUp"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method protected handleSortBy(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    const-string/jumbo v5, "sortby"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "order"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SORT_BY:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0770

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SORT_BY:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtendRuleTimeOut(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "contentType"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v11, "selectOrderType"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "selectCount"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const-string/jumbo v11, "ordinal"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkValidSelectCountForDetailView(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-direct {p0, v10, v12, v11}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v10, p1, v11, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, v12, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkExistSelectOrderType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->isContainOnlyOneContent()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-direct {p0, v10, v12, v11}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v10, p1, v11, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkValidSelectCountForDetailView(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-direct {p0, v10, v12, v11}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v10, p1, v11, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v12, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method handleSwitchViewState(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->SWITCH_STATE_POSITION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SWITCH_TAB:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isMultiPickMode()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPickMode()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public logDCEnterSelectionMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logDCExitSelectionMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logDCSelectedView(Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectedStateArray()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    aget-object v5, v3, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v0, v3, v7

    aget-object v1, v3, v6

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    aget-object v5, v3, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-lez v2, :cond_4

    aget-object v0, v3, v7

    aget-object v1, v3, v6

    goto :goto_1

    :cond_4
    aget-object v5, v3, v7

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    aget-object v0, v3, v6

    aget-object v1, v3, v7

    goto :goto_1
.end method

.method public sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenParamSelectAllAndOrderAndCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "IsSelectAll"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method public sendDCResponseForEnterDetailView()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "DetailView"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method public sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->CONTENT_TYPE_MATCH_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForEnterDetailView(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "DetailView"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method public sendDCResponseForLaunch()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkLaunchDCState(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v6, "DC_LAUNCH_STATE_ID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForLaunch(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v3, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    move-object v3, v1

    goto :goto_2
.end method

.method public sendDCResponseForNoItem(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForNoItem(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method public sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getNlgRequestInfoForSelectedView(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
