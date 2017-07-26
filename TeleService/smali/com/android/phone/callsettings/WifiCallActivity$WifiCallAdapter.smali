.class public Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/WifiCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiCallAdapter"
.end annotation


# instance fields
.field private CallType:[Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallActivity;

.field private wifiCallList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity;Landroid/app/Activity;Ljava/util/TreeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "WifiCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drawNormalScreen position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", item = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/WifiCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040106

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_preferred"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "WifiCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wfcPreferred = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v4, 0x7f1002cb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f1002cc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextViewSummary:Landroid/widget/TextView;

    const v4, 0x7f1002c7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f1002c9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "vowifi_in_can"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextViewSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextViewSummary:Landroid/widget/TextView;

    const v5, 0x7f0d0d0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$1;-><init>(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter$2;-><init>(Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "vowifi_menu_enable"

    invoke-static {v4, v8}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_6

    const/4 v0, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-object p2

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->mTextViewSummary:Landroid/widget/TextView;

    const v5, 0x7f0d0d10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->wifiCallList:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->CallType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    const-string/jumbo v2, "WifiCallActivity"

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

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/WifiCallActivity$WifiCallAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
