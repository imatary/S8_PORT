.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;
.super Landroid/os/Handler;
.source "GLLayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x4b

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->MSG_LONG_CLICK:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mAddButton:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;->onLongClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mCurrLayerId:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->mFocus:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->smoothScaleTo(FI)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    :cond_2
    return-void
.end method
