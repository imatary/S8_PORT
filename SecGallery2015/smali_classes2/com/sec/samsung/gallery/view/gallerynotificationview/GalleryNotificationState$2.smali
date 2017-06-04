.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;
.super Ljava/lang/Object;
.source "GalleryNotificationState.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

.field final synthetic val$upBtn:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;->val$upBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;->val$upBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;->val$upBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    return-void
.end method
