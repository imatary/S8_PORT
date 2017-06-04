.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryAdapter"
.end annotation


# instance fields
.field AlphabetIndex:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSearchFilter:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v10, 0x21

    const/4 v9, 0x0

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->list_item_common_3:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->text1:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " (+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    iget-object v7, v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v4, v5

    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->country_search_highlight:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v5, v4, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->country_search_highlight:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v9, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_rtl_layout_extra_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    const v6, 0x800015

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    return-object p2

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-ge p1, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-ge p1, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " (+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setSearchFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    return-void
.end method
