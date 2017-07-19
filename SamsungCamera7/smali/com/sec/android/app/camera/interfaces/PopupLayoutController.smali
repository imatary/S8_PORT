.class public interface abstract Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
.super Ljava/lang/Object;
.source "PopupLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    }
.end annotation


# virtual methods
.method public abstract hideAllPopup()V
.end method

.method public abstract hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
.end method

.method public abstract hideReview(Z)V
.end method

.method public abstract isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z
.end method

.method public abstract isReviewShowing()Z
.end method

.method public abstract isReviewUpdating()Z
.end method

.method public abstract isShareViaWorking()Z
.end method

.method public abstract onActivityTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V
.end method

.method public abstract showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
.end method

.method public abstract showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract startShareViaAnimation()V
.end method
