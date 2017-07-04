.class Lcom/sec/android/gallery3d/app/GalleryHelpListActivity$1;
.super Ljava/lang/Object;
.source "GalleryHelpListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;

    invoke-static {v0, p3}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->access$000(Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;I)V

    return-void
.end method
