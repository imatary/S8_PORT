.class Landroid/icu/text/RBBISymbolTable;
.super Ljava/lang/Object;
.source "RBBISymbolTable.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    }
.end annotation


# instance fields
.field fCachedSetLookup:Landroid/icu/text/UnicodeSet;

.field fHashTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

.field fRules:Ljava/lang/String;

.field ffffString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleScanner;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/icu/text/RBBISymbolTable;->fRules:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    const-string/jumbo v0, "\uffff"

    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const v2, 0x10207

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-direct {v0}, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;-><init>()V

    iput-object p1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    iput-object p2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    iget-object v4, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    :goto_0
    iget-object v5, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v5, v5, Landroid/icu/text/RBBINode;->fType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    goto :goto_0

    :cond_1
    iget-object v1, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v5, v1, Landroid/icu/text/RBBINode;->fType:I

    if-nez v5, :cond_2

    iget-object v3, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v5, v3, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    return-object v5

    :cond_2
    iget-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const v6, 0x1020f

    invoke-virtual {v5, v6}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    iget-object v2, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iput-object v7, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    goto :goto_1
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2

    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    :cond_0
    return-object v0
.end method

.method lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    :cond_0
    return-object v1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move v1, v3

    const-string/jumbo v2, ""

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v3, :cond_0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method rbbiSymtablePrint()V
    .locals 6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Variable Definitions\nName               Node Val     String Val\n----------------------------------------------------------------------\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\nParsed Variable Definitions\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v3, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/icu/text/RBBINode;->printTree(Z)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
