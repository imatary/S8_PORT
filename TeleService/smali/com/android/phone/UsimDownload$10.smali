.class Lcom/android/phone/UsimDownload$10;
.super Ljava/lang/Object;
.source "UsimDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsimDownload;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v0}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/android/phone/UsimDownload;->-wrap5(Lcom/android/phone/UsimDownload;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v0}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v0}, Lcom/android/phone/UsimDownload;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v0}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v0}, Lcom/android/phone/UsimDownload;->finish()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SKC"

    sget-object v1, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "LUC"

    sget-object v1, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v0}, Lcom/android/phone/UsimDownload;->toastRebootSystem()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/android/phone/UsimDownload;->-wrap5(Lcom/android/phone/UsimDownload;J)V

    goto :goto_0
.end method
