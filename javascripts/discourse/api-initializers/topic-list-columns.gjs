import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  api.registerValueTransformer(
    "topic-list-columns",
    ({ value: columns }) => {
      columns.reposition("posters", { before: "topic" });
    }
  );
});
