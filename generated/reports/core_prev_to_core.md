# Manifest diff: core_prev@9b510bc76da4 -> core@433477862bb9

- new: 1
- removed: 0
- renamed: 0
- source statement changed: 0
- same source, different native statement (mapping/emitter change): 0
- status changed: 1


## New (1)

- CARD_UNIONS_IMAGE [transport_required]: forall A K:set, A <> Empty -> K <> Empty -> forall f :e Power A :^: K, forall s c= K, finite s /\ ((forall t :e K, t :e s -> finite (f t)) /\ (forall t u :e K, 

## Status changed (1)

- list_CASES: transport_required -> native_reuse
