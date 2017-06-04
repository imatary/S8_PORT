.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;
.super Ljava/lang/Object;
.source "KeywordSuggestionListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySuggestionsViewHolder"
.end annotation


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field final itemLayout:Landroid/widget/LinearLayout;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f120135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f120134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f120133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public setData(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;I)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0409

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0409

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0406

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v13, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->getTranslatedWord(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;
    invoke-static {v14, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-boolean v13, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mStartList:Ljava/util/List;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p2

    if-gt v13, v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->getIconResourceId(Ljava/lang/String;)I
    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mStartList:Ljava/util/List;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/List;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mKeyLength:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)I

    move-result v13

    add-int v2, v10, v13

    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v4

    if-gt v10, v4, :cond_2

    if-gt v2, v4, :cond_2

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/TextUtilsWrapper;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/TextUtilsWrapper;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-interface {v5, v13}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/samsung/gallery/lib/libinterface/TextUtilsInterface;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lcom/sec/samsung/gallery/lib/libinterface/TextUtilsInterface;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_5

    move v10, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int v2, v3, v13

    :cond_5
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$KeySuggestionsViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f100112

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-interface {v9, v13, v10, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1
.end method
