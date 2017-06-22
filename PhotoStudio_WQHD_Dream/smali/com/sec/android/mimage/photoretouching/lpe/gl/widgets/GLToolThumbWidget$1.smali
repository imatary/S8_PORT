.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;
.super Ljava/lang/Object;
.source "GLToolThumbWidget.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;J)J

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mChildrenLength:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mStartTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;J)J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mPosition:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;I)I

    goto :goto_0
.end method
