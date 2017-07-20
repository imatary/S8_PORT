.class Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

.field final synthetic val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x384

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set0(Lcom/android/phone/additionalservice/RegisterUSSD;I)I

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get5(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get5(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-virtual {v2, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->showDialog(I)V

    const-string/jumbo v2, "## RegisterUSSD ##"

    const-string/jumbo v3, "skip USSD request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get1(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->code:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-virtual {v2, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->showDialog(I)V

    const-string/jumbo v2, "## RegisterUSSD ##"

    const-string/jumbo v3, "CallStateException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
