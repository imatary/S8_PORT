.class final Lcom/android/phone/PhoneUtilsJpn$1;
.super Ljava/lang/Object;
.source "PhoneUtilsJpn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtilsJpn;->showAlertDialogRetry(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$retryUssd:Ljava/lang/String;

.field final synthetic val$ussd:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneUtilsJpn$1;->val$ussd:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/PhoneUtilsJpn$1;->val$retryUssd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/android/phone/PhoneUssdAction;

    iget-object v1, p0, Lcom/android/phone/PhoneUtilsJpn$1;->val$ussd:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUssdAction;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUssdAction;->send(Lcom/android/phone/PhoneGlobals;)V

    iget-object v0, p0, Lcom/android/phone/PhoneUtilsJpn$1;->val$retryUssd:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->-set0(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
