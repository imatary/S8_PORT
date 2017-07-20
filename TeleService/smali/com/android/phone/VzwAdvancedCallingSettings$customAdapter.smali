.class public Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;
.super Landroid/widget/BaseAdapter;
.source "VzwAdvancedCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "customAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

.field title:[I


# direct methods
.method public constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->title:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->title:[I

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
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-virtual {v3}, Lcom/android/phone/VzwAdvancedCallingSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040005

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->title:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iput-object v2, v3, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iput-object v2, v3, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-virtual {v3}, Lcom/android/phone/VzwAdvancedCallingSettings;->initializeAdvCallSettingsUI()V

    goto :goto_0
.end method
