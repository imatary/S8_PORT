.class Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;
.super Ljava/lang/Object;
.source "NetworkOperatorsLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap11(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get9(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap5(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v3, -0x2713

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap13(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto :goto_0
.end method
