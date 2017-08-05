.class Lcom/android/phone/VzwAdvancedCallingSettings$8;
.super Ljava/lang/Object;
.source "VzwAdvancedCallingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;->displayMobileDataOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$8;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$8;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get2(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, " Enabling mobile data"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
