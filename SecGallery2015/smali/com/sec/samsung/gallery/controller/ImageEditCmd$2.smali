.class Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;
.super Landroid/os/Handler;
.source "ImageEditCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ImageEditCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$000(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$000(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->createAppList()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$100(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$200(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$200(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02d5

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->showAppChoiceDialog(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$300(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    # invokes: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->startShareApp(Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$400(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ImageEditCmd;->dismissDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->access$500(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
