.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;
.super Ljava/lang/Object;
.source "GLBasicUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mIsLongClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->onLongClick()V

    return-void
.end method
