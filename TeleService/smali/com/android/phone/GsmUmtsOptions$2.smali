.class Lcom/android/phone/GsmUmtsOptions$2;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsOptions;->clickSRoaming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    const-string/jumbo v1, "go to Galaxy store!"

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const-string/jumbo v2, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    invoke-static {v0, v1, v2}, Lcom/android/phone/GsmUmtsOptions;->-wrap0(Lcom/android/phone/GsmUmtsOptions;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
