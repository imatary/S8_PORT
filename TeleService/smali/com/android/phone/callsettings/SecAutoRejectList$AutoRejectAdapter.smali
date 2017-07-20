.class Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecAutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$1;,
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$2;,
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;,
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap4(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400d5

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;)V

    const v3, 0x7f100047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v3, 0x7f10004c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v3, 0x7f10004b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f10004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f100262

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    const v3, 0x7f10004a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get0(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0192

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    const-string/jumbo v4, "com.android.providers.blockednumber"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    new-instance v4, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_2
    const-string/jumbo v3, "feature_kor"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0d051a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_5
    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0193

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_1

    :cond_6
    iget v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    if-ne v3, v8, :cond_7

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0d051b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_7
    iget v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0d051c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_8
    iget v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0d051d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap3(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
