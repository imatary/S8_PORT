.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;
.source "AccountSettingsDetailFragmentDCHandler.java"


# static fields
.field private static final USE_CLOUD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/Observer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method

.method private makeCloudSupportNlg(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a07ea

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :sswitch_0
    const-string/jumbo v3, "ImageAnalysisOn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "ImageAnalysisOff"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0813

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x448acf48 -> :sswitch_1
        0x3fda7d76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Settings"

    return-object v0
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "AccountSettingDCHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateId is wrong, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateId is wrong, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string/jumbo v2, "AutoCreateStoriesOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "AutoCreateStoriesOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "RecycleBin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "SuggestImagesOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "SuggestImagesOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "StorySharing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "CloudSyncOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v2, "CloudSyncOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v2, "CrossSamsungCloudCloudSyncScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v2, "GoToUrlSettingOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "GoToUrlSettingOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "ImageAnalysisOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "ImageAnalysisOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "CloudView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "AboutGallery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v1, "AutoCreateStoriesOn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_AUTO_CREATE_STORIES:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_RECYCLE_BIN:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->makeCloudSupportNlg(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "SuggestImagesOn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SUGGEST_IMAGES_CONTROL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_SHARING:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "CloudSyncOn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_SYNC_CONTROL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->makeCloudSupportNlg(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_SYNC_ACTION:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->makeCloudSupportNlg(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string/jumbo v1, "GoToUrlSettingOn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_GO_TO_URL_CONTROL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ImageAnalysisOn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_IMAGE_ANALYSIS_CONTROL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->makeCloudSupportNlg(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->USE_CLOUD:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_VIEW:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->makeCloudSupportNlg(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ABOUT_GALLERY:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6582fe6c -> :sswitch_2
        -0x448acf48 -> :sswitch_c
        -0x35bc4b1d -> :sswitch_9
        -0x205d29b9 -> :sswitch_5
        -0x19756a05 -> :sswitch_3
        -0x1537d72d -> :sswitch_4
        -0x3d1351f -> :sswitch_8
        0x8da204f -> :sswitch_6
        0xc539725 -> :sswitch_e
        0x1269e8ff -> :sswitch_7
        0x3c7f2a27 -> :sswitch_0
        0x3fda7d76 -> :sswitch_b
        0x53661a27 -> :sswitch_1
        0x5e0c8a5a -> :sswitch_d
        0x7e32e6eb -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
