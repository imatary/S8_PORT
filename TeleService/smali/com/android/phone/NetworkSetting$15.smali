.class Lcom/android/phone/NetworkSetting$15;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->selectListPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Manual Network Warning Dialog : Click Cancel button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v2}, Lcom/android/phone/NetworkSetting;->-set5(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0, v2}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    return-void
.end method
