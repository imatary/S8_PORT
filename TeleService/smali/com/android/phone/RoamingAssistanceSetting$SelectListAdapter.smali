.class public Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RoamingAssistanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingAssistanceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectListAdapter"
.end annotation


# instance fields
.field private mItem:[I

.field final synthetic this$0:Lcom/android/phone/RoamingAssistanceSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/RoamingAssistanceSetting;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->this$0:Lcom/android/phone/RoamingAssistanceSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->mItem:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->mItem:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

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

    iget-object v4, p0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->this$0:Lcom/android/phone/RoamingAssistanceSetting;

    invoke-virtual {v4}, Lcom/android/phone/RoamingAssistanceSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04008e

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f10019d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    const v4, 0x7f10019e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->mItem:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(I)V

    if-nez p1, :cond_0

    const v4, 0x7f0d0669

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object v2

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
