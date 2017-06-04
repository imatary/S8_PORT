.class public Lcom/sec/samsung/gallery/lib/se/SeSearchAutoComplete;
.super Ljava/lang/Object;
.source "SeSearchAutoComplete.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/SearchAutoCompleteInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;Landroid/widget/SearchView;)V
    .locals 1

    invoke-virtual {p2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
