.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DefaultButtonsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;->mTouchInterface:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/DefaultButtonsListener$DefaultTouchInterface;->GestureLongPress(Landroid/view/View;)V

    return-void
.end method
