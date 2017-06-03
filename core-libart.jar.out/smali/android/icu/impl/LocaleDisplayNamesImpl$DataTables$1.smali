.class final Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$NO_OP:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;


# direct methods
.method constructor <init>(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;->val$NO_OP:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;->val$NO_OP:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    return-object v0
.end method
