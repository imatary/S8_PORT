.class Lcom/android/phone/operator/usa/AssistedDialingActivity$2;
.super Ljava/lang/Object;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingActivity;->displayHelp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    const v1, 0x7f0d026e

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    const v2, 0x7f0d027b

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
