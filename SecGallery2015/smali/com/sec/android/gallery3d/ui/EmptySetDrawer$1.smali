.class final Lcom/sec/android/gallery3d/ui/EmptySetDrawer$1;
.super Ljava/lang/Object;
.source "EmptySetDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gallery:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$1;->val$gallery:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$1;->val$gallery:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f1200d5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v2, 0x7f120178

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
