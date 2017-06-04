.class Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;
.super Ljava/lang/Object;
.source "PhotoEditorFinishManager.java"


# static fields
.field private static final EDITOR_SERVICE_HIDING_DELAY:I = 0x1f4

.field public static final MSG_BIND_PHOTO_EDITOR_SERVICE:I = 0x0

.field public static final MSG_HIDE_PHOTO_EDITOR_IMAGE:I = 0x2

.field public static final MSG_UNBIND_PHOTO_EDITOR_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EditorFinishManager"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private mIsBoundWithPhotoEditorService:Z

.field private mLaunchedPhotoEditor:Z

.field private final mPhotoEditorSavingHandler:Landroid/os/Handler;

.field private mPhotoEditorService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

.field private final mPhotoEditorServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mLaunchedPhotoEditor:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorSavingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mActivity:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Z)Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->getPhotoEditorService(Z)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->unbindPhotoEditorService()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    return p1
.end method

.method private getPhotoEditorService(Z)Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching"

    const-string/jumbo v4, "com.sec.android.mimage.photoretouching.service.FinishService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mActivity:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mActivity:Landroid/content/Context;

    const v4, 0x7f0a0545

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mActivity:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string/jumbo v3, "CrossPhotoEditorPhoto360Editor"

    :goto_0
    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v3, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-object v3

    :cond_3
    const-string/jumbo v3, "CrossPhotoEditorPhotoEditor"

    goto :goto_0
.end method

.method private unbindPhotoEditorService()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mActivity:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getLaunchedPhotoEditor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mLaunchedPhotoEditor:Z

    return v0
.end method

.method public isBoundWithPhotoEditorService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mIsBoundWithPhotoEditorService:Z

    return v0
.end method

.method public sendMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorSavingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorSavingHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageForBind(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorSavingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mPhotoEditorSavingHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLaunchedPhotoEditor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->mLaunchedPhotoEditor:Z

    return-void
.end method
