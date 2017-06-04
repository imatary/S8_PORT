.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

.field final synthetic val$albumIndex:I

.field final synthetic val$changeScreen:Z

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$albumIndex:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$itemIndex:I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$albumIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$itemIndex:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->val$changeScreen:Z

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailView(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$14900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
