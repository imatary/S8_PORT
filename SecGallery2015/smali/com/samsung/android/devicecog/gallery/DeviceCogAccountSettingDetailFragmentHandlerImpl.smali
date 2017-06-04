.class Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;
.super Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;
.source "DeviceCogAccountSettingDetailFragmentHandlerImpl.java"


# instance fields
.field private final mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    return-void
.end method


# virtual methods
.method getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AutoCreateStoriesOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AutoCreateStoriesOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RecycleBin"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "SuggestImagesOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "SuggestImagesOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "StorySharing"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CloudSyncOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CloudSyncOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CrossSamsungCloudCloudSyncScreen"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "GoToUrlSettingOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "GoToUrlSettingOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "ImageAnalysisOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "ImageAnalysisOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CloudView"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AboutGallery"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
