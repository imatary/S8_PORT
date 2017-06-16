.class Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;
.super Ljava/lang/Object;
.source "SpenScrollBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SpenScrollBar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->access$002(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
