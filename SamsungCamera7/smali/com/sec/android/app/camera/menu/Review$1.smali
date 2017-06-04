.class Lcom/sec/android/app/camera/menu/Review$1;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/Review;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/Review;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review$1;->this$0:Lcom/sec/android/app/camera/menu/Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$1;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$000(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideReview(Z)V

    return-void
.end method
