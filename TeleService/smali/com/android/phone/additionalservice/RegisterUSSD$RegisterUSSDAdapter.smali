.class Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;
.super Landroid/widget/BaseAdapter;
.source "RegisterUSSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterUSSDAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private registerUSSDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterUSSD;


# direct methods
.method public constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->registerUSSDList:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->registerUSSDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->registerUSSDList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    move-object v1, p2

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b7

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;)V

    const v3, 0x7f100224

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f100223

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v3, "getView"

    const-string/jumbo v4, "convertView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->registerUSSDList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v3, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$1;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$ViewHolder;

    goto :goto_0
.end method
