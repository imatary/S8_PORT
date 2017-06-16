.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$29;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->initForDesktopMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$29;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$29;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setMouseIcon(I)V

    const/4 v0, 0x1

    return v0
.end method
