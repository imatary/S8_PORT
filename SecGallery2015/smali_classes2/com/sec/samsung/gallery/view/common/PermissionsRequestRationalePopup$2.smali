.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;
.super Ljava/lang/Object;
.source "PermissionsRequestRationalePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$2;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
