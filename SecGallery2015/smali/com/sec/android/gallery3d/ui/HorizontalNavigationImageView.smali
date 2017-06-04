.class public Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView;
.source "HorizontalNavigationImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;
    }
.end annotation


# instance fields
.field private mIsPrevious:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$HorizontalNavigationImageIcon;-><init>(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->mIsPrevious:Z

    return v0
.end method
