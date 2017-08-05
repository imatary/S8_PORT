.class Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SubNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SubNumberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubNumberAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelect:Landroid/widget/CheckBox;

.field private mSubPhoneNumber:Ljava/lang/String;

.field private mSubPrefixNumber:Ljava/lang/String;

.field private mSubPrefixType:Ljava/lang/String;

.field private mSubType:Ljava/lang/String;

.field private mTextViewPho:Landroid/widget/TextView;

.field private mTextViewPre:Landroid/widget/TextView;

.field private mTextViewType:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SubNumberManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0400f1

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v4, 0x7f100299

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f100048

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f10029b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewType:Landroid/widget/TextView;

    const v4, 0x7f10029c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewPre:Landroid/widget/TextView;

    const v4, 0x7f10029d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewPho:Landroid/widget/TextView;

    const v4, 0x7f10029a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSelect:Landroid/widget/CheckBox;

    move-object v1, p3

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/callsettings/SubNumberManager;->-set4(Lcom/android/phone/callsettings/SubNumberManager;Z)Z

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v4}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v4}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSelect:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v5}, Lcom/android/phone/callsettings/SubNumberManager;->-get8(Lcom/android/phone/callsettings/SubNumberManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v4, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter$1;-><init>(Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v4, p1}, Lcom/android/phone/callsettings/SubNumberManager;->getSubType(I)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0d22

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubType:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-> getView position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mSubType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v4, p1}, Lcom/android/phone/callsettings/SubNumberManager;->getSubPhone(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPhoneNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getView =mSubPrefixType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mSubPrefixNumber"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mSubPhoneNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewPre:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPrefixNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mTextViewPho:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v4, p1}, Lcom/android/phone/callsettings/SubNumberManager;->getSubType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0d23

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->mSubType:Ljava/lang/String;

    goto/16 :goto_1
.end method
