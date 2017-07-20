.class Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;
.super Ljava/lang/Object;
.source "SmartCallLegalInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getContentText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

.field final synthetic val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

.field final synthetic val$pos:I

.field final synthetic val$terms:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;Landroid/text/style/BackgroundColorSpan;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    iput-object p2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

    iput p3, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$pos:I

    iput-object p4, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$terms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v10, p1

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/text/Spannable;

    const-string/jumbo v13, "SmartCallLegalInfoDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    if-eq v1, v13, :cond_0

    if-nez v1, :cond_4

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    int-to-float v13, v11

    invoke-virtual {v4, v5, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    const-class v13, Landroid/text/style/ClickableSpan;

    invoke-interface {v2, v8, v8, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v13, v7

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v6, v7, v13

    const/4 v13, 0x1

    if-ne v1, v13, :cond_1

    invoke-virtual {v6, v10}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v9, v13}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    const/4 v13, 0x1

    return v13

    :cond_1
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$pos:I

    if-lt v8, v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$pos:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$terms:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    if-gt v8, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$pos:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$pos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$terms:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-interface {v9, v13, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    const/4 v13, 0x0

    return v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v9, v13}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    :cond_4
    const/4 v13, 0x3

    if-ne v1, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;->val$SELECTED_URL_SPAN_COLOR_BG:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v9, v13}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method
