.class Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$2;
.super Ljava/lang/Object;
.source "OmcPackageInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->loadComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->showCautionDialog()V
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V

    return-void
.end method
