.class Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;
.super Landroid/app/Dialog;
.source "HoverDialog.java"


# instance fields
.field desc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x20

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f03007f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->desc:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setContentDescription(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartPoint(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/HoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method
