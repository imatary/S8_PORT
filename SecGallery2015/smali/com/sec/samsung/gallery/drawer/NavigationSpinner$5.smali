.class Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;
.super Ljava/lang/Object;
.source "NavigationSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setNaviSpinnerDisable()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$900(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f100202

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/NavigationSpinner$5;->this$0:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->access$600(Lcom/sec/samsung/gallery/drawer/NavigationSpinner;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method
