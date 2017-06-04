.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->refreshActionbarTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$900(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$4;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    # getter for: Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->mActionbarTitle:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$800(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
