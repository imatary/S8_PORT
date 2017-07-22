.class Lcom/android/phone/KTCallForwardingConditional$1;
.super Ljava/lang/Object;
.source "KTCallForwardingConditional.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingConditional;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingConditional;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingConditional;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const/4 v2, 0x5

    iput v2, v0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0, v8}, Lcom/android/phone/KTCallForwardingConditional;->-set3(Lcom/android/phone/KTCallForwardingConditional;I)I

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->-get0(Lcom/android/phone/KTCallForwardingConditional;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v0, v0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0, v8}, Lcom/android/phone/KTCallForwardingConditional;->-set0(Lcom/android/phone/KTCallForwardingConditional;Z)Z

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->-get4(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v2, v2, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v5}, Lcom/android/phone/KTCallForwardingConditional;->-get1(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-virtual {v5}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const v7, 0x7f0d079d

    invoke-virtual {v6, v7}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/android/phone/KTCallForwardingConditional;->-set2(Lcom/android/phone/KTCallForwardingConditional;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->-wrap0(Lcom/android/phone/KTCallForwardingConditional;)V

    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-static {v0, v8}, Lcom/android/phone/KTCallForwardingConditional;->-set1(Lcom/android/phone/KTCallForwardingConditional;Z)Z

    :cond_0
    return v8

    :cond_1
    const/16 v4, 0x14

    goto :goto_0
.end method
