.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$4;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    filled-new-array {v6, v7, v8, v9}, [I

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x3

    aget v6, v1, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v4

    :goto_0
    const/4 v6, 0x2

    aget v6, v4, v6

    sub-int v7, p6, p5

    add-int v2, v6, v7

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    const-string/jumbo v6, ""

    return-object v6

    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    goto :goto_0

    :cond_1
    sub-int v6, p3, p2

    if-lt v2, v6, :cond_3

    const/4 v6, 0x1

    aget v6, v1, v6

    if-ge v2, v6, :cond_2

    const-string/jumbo v6, ""

    return-object v6

    :cond_2
    const/4 v6, 0x0

    return-object v6

    :cond_3
    const/4 v5, 0x0

    move v0, v2

    return-object v5
.end method
